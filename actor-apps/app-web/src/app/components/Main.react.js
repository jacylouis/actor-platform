import React from 'react';

import requireAuth from 'utils/require-auth';

import VisibilityActionCreators from '../actions/VisibilityActionCreators';
import FaviconActionCreators from 'actions/FaviconActionCreators';
import FaviconStore from 'stores/FaviconStore';

import ActivitySection from 'components/ActivitySection.react';
import SidebarSection from 'components/SidebarSection.react';
import ToolbarSection from 'components/ToolbarSection.react';
import DialogSection from 'components/DialogSection.react';
import Favicon from 'components/common/Favicon.react';

//import AppCacheStore from 'stores/AppCacheStore';
//import AppCacheUpdateModal from 'components/modals/AppCacheUpdate.react';

const visibilitychange = 'visibilitychange';

const onVisibilityChange = () => {
  if (!document.hidden) {
    VisibilityActionCreators.createAppVisible();
    FaviconActionCreators.setDefaultFavicon();
  } else {
    VisibilityActionCreators.createAppHidden();
  }
};

const getStateFromStores = () => {
  return {
    faviconPath: FaviconStore.getFaviconPath()
  };
};

class Main extends React.Component {
  constructor(props) {
    super(props);

    this.state = getStateFromStores();

    document.addEventListener(visibilitychange, onVisibilityChange);
    FaviconStore.addChangeListener(this.onChange);

    if (!document.hidden) {
      VisibilityActionCreators.createAppVisible();
    }
  }

  onChange = () => {
    this.setState(getStateFromStores());
  }

  render() {
    //let appCacheUpdateModal;
    //if (this.state.isAppUpdateModalOpen) {
    //  appCacheUpdateModal = <AppCacheUpdateModal/>;
    //}

    return (
      <div className="app row">
        <Favicon path={this.state.faviconPath}/>

        <SidebarSection/>

        <section className="main col-xs">
          <ToolbarSection/>
          <DialogSection/>
        </section>

        <ActivitySection/>

        {/*appCacheUpdateModal*/}
      </div>
    );
  }
}

export default requireAuth(Main);
