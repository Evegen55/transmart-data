/*
 * Copyright © 2013-2014 The Hyve B.V.
 *
 * This file is part of transmart-data.
 *
 * Transmart-data is free software: you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by the Free
 * Software Foundation, either version 3 of the License, or (at your option) any
 * later version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more
 * details.
 *
 * You should have received a copy of the GNU General Public License along with
 * transmart-data.  If not, see <http://www.gnu.org/licenses/>.
 */

package inc.oracle

import groovy.transform.EqualsAndHashCode
import org.codehaus.jackson.annotate.JsonIgnore

@EqualsAndHashCode(includes = ['type', 'owner', 'name'])
abstract class Item implements Comparable<Item> {
    String type
    String owner
    String name /* null if not named */

    @JsonIgnore
    abstract String getData()

    @JsonIgnore
    String getNameLower() {
        name?.toLowerCase(Locale.ENGLISH)
    }

    int compareTo(Item other) {
        owner <=> other.owner ?: name <=> other.name ?: type <=> other.type
    }
}
