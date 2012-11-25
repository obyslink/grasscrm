package com.gcrm.domain;

import java.io.Serializable;
import java.util.Date;

public class BaseEntity implements Serializable, Cloneable  {

	private static final long serialVersionUID = 8250950813769457555L;

	private Integer id;
	private User created_by;
	private User updated_by;
	private Date created_on;
	private Date updated_on;
	
	/**
	 * @return the created_by
	 */
	public User getCreated_by() {
		return created_by;
	}

	/**
	 * @param created_by
	 *            the created_by to set
	 */
	public void setCreated_by(User created_by) {
		this.created_by = created_by;
	}

	/**
	 * @return the updated_by
	 */
	public User getUpdated_by() {
		return updated_by;
	}

	/**
	 * @param updated_by
	 *            the updated_by to set
	 */
	public void setUpdated_by(User updated_by) {
		this.updated_by = updated_by;
	}

	/**
	 * @return the created_on
	 */
	public Date getCreated_on() {
		return created_on;
	}

	/**
	 * @param created_on
	 *            the created_on to set
	 */
	public void setCreated_on(Date created_on) {
		this.created_on = created_on;
	}

	/**
	 * @return the updated_on
	 */
	public Date getUpdated_on() {
		return updated_on;
	}

	/**
	 * @param updated_on
	 *            the updated_on to set
	 */
	public void setUpdated_on(Date updated_on) {
		this.updated_on = updated_on;
	}

	/**
	 * @return the id
	 */
	public Integer getId() {
		return id;
	}

	/**
	 * @param id the id to set
	 */
	public void setId(Integer id) {
		this.id = id;
	}

	/* (non-Javadoc)
	 * @see java.lang.Object#hashCode()
	 */
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((id == null) ? 0 : id.hashCode());
		return result;
	}

	/* (non-Javadoc)
	 * @see java.lang.Object#equals(java.lang.Object)
	 */
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (!(obj instanceof BaseEntity))
			return false;
		BaseEntity other = (BaseEntity) obj;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		return true;
	}

}
