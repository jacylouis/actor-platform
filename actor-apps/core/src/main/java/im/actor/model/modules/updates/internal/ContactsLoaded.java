/*
 * Copyright (C) 2015 Actor LLC. <https://actor.im>
 */

package im.actor.model.modules.updates.internal;

import im.actor.model.api.rpc.ResponseGetContacts;

public class ContactsLoaded extends InternalUpdate {
    private ResponseGetContacts contacts;

    public ContactsLoaded(ResponseGetContacts contacts) {
        this.contacts = contacts;
    }

    public ResponseGetContacts getContacts() {
        return contacts;
    }
}
