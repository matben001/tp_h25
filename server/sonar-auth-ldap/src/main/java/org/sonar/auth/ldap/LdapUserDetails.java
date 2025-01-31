package org.sonar.auth.ldap;

import org.sonar.api.security.ExternalUsersProvider;

/**
 * This class is not intended to be subclassed by clients.
 *
 * @see ExternalUsersProvider
 * @since 2.14
 */
public final class LdapUserDetails {

  private String name = "";
  private String email = "";
  private String userId = "";

  public void setEmail(String email) {
    this.email = email;
  }

  public String getEmail() {
    return email;
  }

  public boolean isEmailPolymtl() {
    return email != null && email.toLowerCase().endsWith("@polymtl.ca");
  }

  public void setName(String name) {
    this.name = name;
  }

  public String getName() {
    return name;
  }

  /**
   * @since 5.2
   */
  public void setUserId(String userId) {
    this.userId = userId;
  }

  /**
   * @since 5.2
   */
  public String getUserId() {
    return userId;
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder("UserDetails{");
    sb.append("name='").append(name).append('\'');
    sb.append(", email='").append(email).append('\'');
    sb.append(", userId='").append(userId).append('\'');
    sb.append('}');
    return sb.toString();
  }
}
