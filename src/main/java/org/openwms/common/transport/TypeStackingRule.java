/*
 * Copyright 2018 Heiko Scherrer
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.openwms.common.transport;

import org.ameba.integration.jpa.BaseEntity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;
import java.io.Serializable;
import java.util.Objects;

/**
 * A TypeStackingRule is a {@link Rule} that defines which {@link TransportUnitType} can be stacked on other types. Additionally a maximum
 * number of {@link TransportUnit}s can be defined.
 *
 * @author <a href="mailto:scherrer@openwms.org">Heiko Scherrer</a>
 * @GlossaryTerm
 * @see TransportUnitType
 */
@Entity
@Table(name = "COM_TYPE_STACKING_RULE", uniqueConstraints = @UniqueConstraint(columnNames = {"C_TRANSPORT_UNIT_TYPE",
        "C_NO_TRANSPORT_UNITS", "C_ALLOWED_TRANSPORT_UNIT_TYPE"}))
public class TypeStackingRule extends BaseEntity implements Serializable, Rule {

    /** To separate fields in toString method. */
    static final String SEPARATOR = "::";
    /** Parent {@link TransportUnitType}. */
    @ManyToOne
    @JoinColumn(name = "C_TRANSPORT_UNIT_TYPE")
    private TransportUnitType transportUnitType;

    /** Number of {@link TransportUnitType}s that may be placed on the owning {@link TransportUnitType} (not-null). */
    @Column(name = "C_NO_TRANSPORT_UNITS", nullable = false)
    private short noTransportUnits;

    /** The allowed {@link TransportUnitType} that may be placed on the owning {@link TransportUnitType} (not-null). */
    @ManyToOne
    @JoinColumn(name = "C_ALLOWED_TRANSPORT_UNIT_TYPE", nullable = false)
    private TransportUnitType allowedTransportUnitType;

    /*~ ----------------------------- constructors ------------------- */

    /**
     * Dear JPA...
     */
    TypeStackingRule() {
    }

    /**
     * Create a new {@code TypeStackingRule}. Define how many {@link TransportUnit}s of the allowedTransportUnitType may stacked on this
     * {@link TransportUnitType}.
     *
     * @param noTransportUnits The number of allowed {@link TransportUnit}s
     * @param allowedTransportUnitType The allowed {@link TransportUnitType}
     */
    TypeStackingRule(short noTransportUnits, TransportUnitType allowedTransportUnitType) {
        this.noTransportUnits = noTransportUnits;
        this.allowedTransportUnitType = allowedTransportUnitType;
    }

    /*~ ----------------------------- methods ------------------- */

    /**
     * Get the transportUnitType.
     *
     * @return The transportUnitType.
     */
    public TransportUnitType getTransportUnitType() {
        return transportUnitType;
    }

    /**
     * Returns the number of {@link TransportUnitType}s that may be placed on the owning {@link TransportUnitType}.
     *
     * @return The number of TransportUnits allowed
     */
    public short getNoTransportUnits() {
        return this.noTransportUnits;
    }

    /**
     * Returns the allowed {@link TransportUnitType} that may be placed on the owning {@link TransportUnitType}.
     *
     * @return The allowed TransportUnitType
     */
    public TransportUnitType getAllowedTransportUnitType() {
        return this.allowedTransportUnitType;
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        TypeStackingRule that = (TypeStackingRule) o;
        return noTransportUnits == that.noTransportUnits &&
                Objects.equals(transportUnitType, that.transportUnitType) &&
                Objects.equals(allowedTransportUnitType, that.allowedTransportUnitType);
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public int hashCode() {
        return Objects.hash(transportUnitType, noTransportUnits, allowedTransportUnitType);
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public String toString() {
        return noTransportUnits + SEPARATOR + transportUnitType + SEPARATOR + allowedTransportUnitType;
    }
}