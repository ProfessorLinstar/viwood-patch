.class public final Lcom/android/server/devicepolicy/EnforcingAdmin;
.super Ljava/lang/Object;
.source "EnforcingAdmin.java"


# instance fields
.field public mAuthorities:Ljava/util/Set;

.field public final mComponentName:Landroid/content/ComponentName;

.field public final mIsRoleAuthority:Z

.field public final mIsSystemAuthority:Z

.field public final mPackageName:Ljava/lang/String;

.field public final mSystemEntity:Ljava/lang/String;

.field public final mUserId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    .line 186
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mIsSystemAuthority:Z

    const/4 v0, 0x0

    .line 187
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mIsRoleAuthority:Z

    .line 189
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mPackageName:Ljava/lang/String;

    .line 190
    iput-object p1, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mSystemEntity:Ljava/lang/String;

    .line 191
    iput v0, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mUserId:I

    const/4 v0, 0x0

    .line 192
    iput-object v0, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mComponentName:Landroid/content/ComponentName;

    .line 193
    invoke-static {p1}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getSystemAuthority(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mAuthorities:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    .line 171
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mIsRoleAuthority:Z

    const/4 v0, 0x0

    .line 172
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mIsSystemAuthority:Z

    .line 173
    iput-object p1, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mPackageName:Ljava/lang/String;

    const/4 p1, 0x0

    .line 174
    iput-object p1, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mSystemEntity:Ljava/lang/String;

    .line 175
    iput p2, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mUserId:I

    .line 176
    iput-object p1, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mComponentName:Landroid/content/ComponentName;

    .line 178
    iput-object p1, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mAuthorities:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/ComponentName;Ljava/util/Set;I)V
    .locals 1

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 155
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    .line 158
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mIsRoleAuthority:Z

    .line 159
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mIsSystemAuthority:Z

    .line 160
    iput-object p1, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mPackageName:Ljava/lang/String;

    const/4 p1, 0x0

    .line 161
    iput-object p1, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mSystemEntity:Ljava/lang/String;

    .line 162
    iput-object p2, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mComponentName:Landroid/content/ComponentName;

    .line 163
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1, p3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mAuthorities:Ljava/util/Set;

    .line 164
    iput p4, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mUserId:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/ComponentName;Ljava/util/Set;IZ)V
    .locals 0

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 200
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 202
    iput-boolean p5, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mIsRoleAuthority:Z

    const/4 p5, 0x0

    .line 203
    iput-boolean p5, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mIsSystemAuthority:Z

    .line 204
    iput-object p1, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mPackageName:Ljava/lang/String;

    const/4 p1, 0x0

    .line 205
    iput-object p1, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mSystemEntity:Ljava/lang/String;

    .line 206
    iput-object p2, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mComponentName:Landroid/content/ComponentName;

    .line 207
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1, p3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mAuthorities:Ljava/util/Set;

    .line 208
    iput p4, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mUserId:I

    return-void
.end method

.method public static createDeviceAdminEnforcingAdmin(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/EnforcingAdmin;
    .locals 3

    .line 96
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    new-instance v0, Lcom/android/server/devicepolicy/EnforcingAdmin;

    .line 98
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "device_admin"

    invoke-static {v2}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2, p1}, Lcom/android/server/devicepolicy/EnforcingAdmin;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Ljava/util/Set;I)V

    return-object v0
.end method

.method public static createEnforcingAdmin(Landroid/app/admin/EnforcingAdmin;)Lcom/android/server/devicepolicy/EnforcingAdmin;
    .locals 9

    .line 108
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    invoke-virtual {p0}, Landroid/app/admin/EnforcingAdmin;->getAuthority()Landroid/app/admin/Authority;

    move-result-object v0

    .line 110
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 111
    sget-object v1, Landroid/app/admin/DpcAuthority;->DPC_AUTHORITY:Landroid/app/admin/DpcAuthority;

    invoke-virtual {v1, v0}, Landroid/app/admin/DpcAuthority;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    new-instance v0, Lcom/android/server/devicepolicy/EnforcingAdmin;

    .line 113
    invoke-virtual {p0}, Landroid/app/admin/EnforcingAdmin;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/admin/EnforcingAdmin;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const-string v3, "enterprise"

    .line 114
    invoke-static {v3}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/admin/EnforcingAdmin;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/server/devicepolicy/EnforcingAdmin;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Ljava/util/Set;I)V

    return-object v0

    .line 115
    :cond_0
    sget-object v1, Landroid/app/admin/DeviceAdminAuthority;->DEVICE_ADMIN_AUTHORITY:Landroid/app/admin/DeviceAdminAuthority;

    invoke-virtual {v1, v0}, Landroid/app/admin/DeviceAdminAuthority;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "device_admin"

    if-eqz v1, :cond_1

    .line 116
    new-instance v0, Lcom/android/server/devicepolicy/EnforcingAdmin;

    .line 117
    invoke-virtual {p0}, Landroid/app/admin/EnforcingAdmin;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/admin/EnforcingAdmin;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    .line 118
    invoke-static {v2}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/admin/EnforcingAdmin;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    invoke-direct {v0, v1, v3, v2, p0}, Lcom/android/server/devicepolicy/EnforcingAdmin;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Ljava/util/Set;I)V

    return-object v0

    .line 119
    :cond_1
    instance-of v1, v0, Landroid/app/admin/RoleAuthority;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/app/admin/RoleAuthority;

    .line 120
    new-instance v3, Lcom/android/server/devicepolicy/EnforcingAdmin;

    .line 121
    invoke-virtual {p0}, Landroid/app/admin/EnforcingAdmin;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Landroid/app/admin/EnforcingAdmin;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    .line 122
    invoke-static {v2}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v6

    invoke-virtual {p0}, Landroid/app/admin/EnforcingAdmin;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    const/4 v8, 0x1

    invoke-direct/range {v3 .. v8}, Lcom/android/server/devicepolicy/EnforcingAdmin;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Ljava/util/Set;IZ)V

    return-object v3

    .line 126
    :cond_2
    new-instance v0, Lcom/android/server/devicepolicy/EnforcingAdmin;

    invoke-virtual {p0}, Landroid/app/admin/EnforcingAdmin;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/admin/EnforcingAdmin;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    .line 127
    sget-object v3, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-virtual {p0}, Landroid/app/admin/EnforcingAdmin;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/server/devicepolicy/EnforcingAdmin;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Ljava/util/Set;I)V

    return-object v0
.end method

.method public static createEnforcingAdmin(Ljava/lang/String;I)Lcom/android/server/devicepolicy/EnforcingAdmin;
    .locals 1

    .line 84
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    new-instance v0, Lcom/android/server/devicepolicy/EnforcingAdmin;

    invoke-direct {v0, p0, p1}, Lcom/android/server/devicepolicy/EnforcingAdmin;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static createEnterpriseEnforcingAdmin(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/EnforcingAdmin;
    .locals 3

    .line 90
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    new-instance v0, Lcom/android/server/devicepolicy/EnforcingAdmin;

    .line 92
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "enterprise"

    invoke-static {v2}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2, p1}, Lcom/android/server/devicepolicy/EnforcingAdmin;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Ljava/util/Set;I)V

    return-object v0
.end method

.method public static createSystemEnforcingAdmin(Ljava/lang/String;)Lcom/android/server/devicepolicy/EnforcingAdmin;
    .locals 1

    .line 103
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    new-instance v0, Lcom/android/server/devicepolicy/EnforcingAdmin;

    invoke-direct {v0, p0}, Lcom/android/server/devicepolicy/EnforcingAdmin;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getParcelableAuthority(Ljava/lang/String;)Landroid/app/admin/Authority;
    .locals 1

    if-eqz p0, :cond_4

    .line 135
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 138
    :cond_0
    const-string v0, "enterprise"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    sget-object p0, Landroid/app/admin/DpcAuthority;->DPC_AUTHORITY:Landroid/app/admin/DpcAuthority;

    return-object p0

    .line 141
    :cond_1
    const-string v0, "device_admin"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 142
    sget-object p0, Landroid/app/admin/DeviceAdminAuthority;->DEVICE_ADMIN_AUTHORITY:Landroid/app/admin/DeviceAdminAuthority;

    return-object p0

    .line 144
    :cond_2
    const-string/jumbo v0, "role:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x5

    .line 145
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 146
    new-instance v0, Landroid/app/admin/RoleAuthority;

    invoke-static {p0}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/app/admin/RoleAuthority;-><init>(Ljava/util/Set;)V

    return-object v0

    .line 148
    :cond_3
    sget-object p0, Landroid/app/admin/UnknownAuthority;->UNKNOWN_AUTHORITY:Landroid/app/admin/UnknownAuthority;

    return-object p0

    .line 136
    :cond_4
    :goto_0
    sget-object p0, Landroid/app/admin/UnknownAuthority;->UNKNOWN_AUTHORITY:Landroid/app/admin/UnknownAuthority;

    return-object p0
.end method

.method public static getRoleAuthoritiesOrDefault(Ljava/lang/String;I)Ljava/util/Set;
    .locals 3

    .line 212
    invoke-static {p0, p1}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getRoles(Ljava/lang/String;I)Ljava/util/Set;

    move-result-object p0

    .line 213
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 214
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "role:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 217
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "default"

    invoke-static {p0}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    :cond_1
    return-object p1
.end method

.method public static getRoleAuthorityOf(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "role:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getRoles(Ljava/lang/String;I)Ljava/util/Set;
    .locals 4

    .line 234
    const-class v0, Lcom/android/role/RoleManagerLocal;

    invoke-static {v0}, Lcom/android/server/LocalManagerRegistry;->getManager(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/role/RoleManagerLocal;

    .line 236
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 237
    invoke-interface {v0, p1}, Lcom/android/role/RoleManagerLocal;->getRolesAndHolders(I)Ljava/util/Map;

    move-result-object p1

    .line 238
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 239
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 240
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static getSystemAuthority(Ljava/lang/String;)Ljava/util/Set;
    .locals 3

    .line 227
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "system:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static hasMatchingAuthorities(Lcom/android/server/devicepolicy/EnforcingAdmin;Lcom/android/server/devicepolicy/EnforcingAdmin;)Z
    .locals 1

    .line 334
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mIsRoleAuthority:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/android/server/devicepolicy/EnforcingAdmin;->mIsRoleAuthority:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 337
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getAuthorities()Ljava/util/Set;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getAuthorities()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/server/devicepolicy/EnforcingAdmin;
    .locals 8

    .line 378
    const-string/jumbo v0, "package-name"

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 379
    const-string/jumbo v2, "system-entity"

    invoke-interface {p0, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 380
    const-string v3, "is-role"

    invoke-interface {p0, v1, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 381
    const-string v4, "is-system"

    const/4 v5, 0x0

    invoke-interface {p0, v1, v4, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    .line 383
    const-string v5, "authorities"

    invoke-interface {p0, v1, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 384
    const-string/jumbo v6, "user-id"

    invoke-interface {p0, v1, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 386
    const-string v7, "EnforcingAdmin"

    if-eqz v3, :cond_1

    if-nez v0, :cond_0

    .line 388
    const-string p0, "Error parsing EnforcingAdmin with RoleAuthority, packageName is null."

    invoke-static {v7, p0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 393
    :cond_0
    new-instance p0, Lcom/android/server/devicepolicy/EnforcingAdmin;

    invoke-direct {p0, v0, v6}, Lcom/android/server/devicepolicy/EnforcingAdmin;-><init>(Ljava/lang/String;I)V

    return-object p0

    :cond_1
    if-eqz v4, :cond_3

    if-nez v2, :cond_2

    .line 396
    const-string p0, "Error parsing EnforcingAdmin with SystemAuthority, systemEntity is null."

    invoke-static {v7, p0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 400
    :cond_2
    new-instance p0, Lcom/android/server/devicepolicy/EnforcingAdmin;

    invoke-direct {p0, v2}, Lcom/android/server/devicepolicy/EnforcingAdmin;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_3
    if-eqz v0, :cond_6

    if-nez v5, :cond_4

    goto :goto_1

    .line 408
    :cond_4
    const-string v2, "class-name"

    invoke-interface {p0, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_5

    goto :goto_0

    .line 410
    :cond_5
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v0, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    :goto_0
    const-string p0, ";"

    invoke-virtual {v5, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Set;->of([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    .line 413
    new-instance v2, Lcom/android/server/devicepolicy/EnforcingAdmin;

    invoke-direct {v2, v0, v1, p0, v6}, Lcom/android/server/devicepolicy/EnforcingAdmin;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Ljava/util/Set;I)V

    return-object v2

    .line 403
    :cond_6
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error parsing EnforcingAdmin, packageName is "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    const-string/jumbo v2, "null"

    if-nez v0, :cond_7

    move-object v0, v2

    :cond_7
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", and authorities is "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v5, :cond_8

    move-object v5, v2

    .line 405
    :cond_8
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 403
    invoke-static {v7, p0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 323
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/android/server/devicepolicy/EnforcingAdmin;

    if-eq v3, v2, :cond_1

    goto :goto_0

    .line 324
    :cond_1
    check-cast p1, Lcom/android/server/devicepolicy/EnforcingAdmin;

    .line 325
    iget-object v2, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mPackageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/devicepolicy/EnforcingAdmin;->mPackageName:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mSystemEntity:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/devicepolicy/EnforcingAdmin;->mSystemEntity:Ljava/lang/String;

    .line 326
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mComponentName:Landroid/content/ComponentName;

    iget-object v3, p1, Lcom/android/server/devicepolicy/EnforcingAdmin;->mComponentName:Landroid/content/ComponentName;

    .line 327
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mIsRoleAuthority:Z

    .line 328
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p1, Lcom/android/server/devicepolicy/EnforcingAdmin;->mIsRoleAuthority:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mIsSystemAuthority:Z

    iget-boolean v3, p1, Lcom/android/server/devicepolicy/EnforcingAdmin;->mIsSystemAuthority:Z

    if-ne v2, v3, :cond_2

    .line 330
    invoke-static {p0, p1}, Lcom/android/server/devicepolicy/EnforcingAdmin;->hasMatchingAuthorities(Lcom/android/server/devicepolicy/EnforcingAdmin;Lcom/android/server/devicepolicy/EnforcingAdmin;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final getAuthorities()Ljava/util/Set;
    .locals 2

    .line 247
    iget-object v0, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mAuthorities:Ljava/util/Set;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mIsRoleAuthority:Z

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mPackageName:Ljava/lang/String;

    iget v1, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mUserId:I

    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getRoleAuthoritiesOrDefault(Ljava/lang/String;I)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mAuthorities:Ljava/util/Set;

    .line 250
    :cond_0
    iget-object p0, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mAuthorities:Ljava/util/Set;

    return-object p0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 0

    .line 278
    iget-object p0, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mComponentName:Landroid/content/ComponentName;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    .line 269
    iget-object p0, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getParcelableAdmin()Landroid/app/admin/EnforcingAdmin;
    .locals 4

    .line 284
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mIsRoleAuthority:Z

    if-eqz v0, :cond_1

    .line 285
    iget-object v0, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mPackageName:Ljava/lang/String;

    iget v1, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mUserId:I

    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getRoles(Ljava/lang/String;I)Ljava/util/Set;

    move-result-object v0

    .line 286
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 287
    sget-object v0, Landroid/app/admin/UnknownAuthority;->UNKNOWN_AUTHORITY:Landroid/app/admin/UnknownAuthority;

    goto :goto_0

    .line 289
    :cond_0
    new-instance v1, Landroid/app/admin/RoleAuthority;

    invoke-direct {v1, v0}, Landroid/app/admin/RoleAuthority;-><init>(Ljava/util/Set;)V

    move-object v0, v1

    goto :goto_0

    .line 291
    :cond_1
    iget-object v0, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mAuthorities:Ljava/util/Set;

    const-string v1, "enterprise"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 292
    sget-object v0, Landroid/app/admin/DpcAuthority;->DPC_AUTHORITY:Landroid/app/admin/DpcAuthority;

    goto :goto_0

    .line 293
    :cond_2
    iget-object v0, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mAuthorities:Ljava/util/Set;

    const-string v1, "device_admin"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 294
    sget-object v0, Landroid/app/admin/DeviceAdminAuthority;->DEVICE_ADMIN_AUTHORITY:Landroid/app/admin/DeviceAdminAuthority;

    goto :goto_0

    .line 295
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mIsSystemAuthority:Z

    if-eqz v0, :cond_4

    .line 297
    new-instance v0, Landroid/app/admin/UnknownAuthority;

    iget-object v1, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mSystemEntity:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/app/admin/UnknownAuthority;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 299
    :cond_4
    sget-object v0, Landroid/app/admin/UnknownAuthority;->UNKNOWN_AUTHORITY:Landroid/app/admin/UnknownAuthority;

    .line 301
    :goto_0
    new-instance v1, Landroid/app/admin/EnforcingAdmin;

    iget-object v2, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mPackageName:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mUserId:I

    .line 304
    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    iget-object p0, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mComponentName:Landroid/content/ComponentName;

    invoke-direct {v1, v2, v0, v3, p0}, Landroid/app/admin/EnforcingAdmin;-><init>(Ljava/lang/String;Landroid/app/admin/Authority;Landroid/os/UserHandle;Landroid/content/ComponentName;)V

    return-object v1
.end method

.method public getUserId()I
    .locals 0

    .line 273
    iget p0, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mUserId:I

    return p0
.end method

.method public hasAuthority(Ljava/lang/String;)Z
    .locals 0

    .line 260
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getAuthorities()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 2

    .line 342
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mIsRoleAuthority:Z

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mPackageName:Ljava/lang/String;

    iget p0, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mUserId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0

    .line 344
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mIsSystemAuthority:Z

    if-eqz v0, :cond_1

    .line 345
    iget-object p0, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mSystemEntity:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0

    .line 348
    :cond_1
    iget-object v0, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mComponentName:Landroid/content/ComponentName;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mPackageName:Ljava/lang/String;

    :cond_2
    iget v1, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mUserId:I

    .line 349
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 350
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getAuthorities()Ljava/util/Set;

    move-result-object p0

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 347
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isSystemAuthority()Z
    .locals 0

    .line 264
    iget-boolean p0, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mIsSystemAuthority:Z

    return p0
.end method

.method public reloadRoleAuthorities()V
    .locals 2

    .line 254
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mIsRoleAuthority:Z

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mPackageName:Ljava/lang/String;

    iget v1, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mUserId:I

    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getRoleAuthoritiesOrDefault(Ljava/lang/String;I)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mAuthorities:Ljava/util/Set;

    :cond_0
    return-void
.end method

.method public saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 3

    .line 355
    const-string/jumbo v0, "package-name"

    iget-object v1, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 356
    const-string v0, "is-role"

    iget-boolean v1, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mIsRoleAuthority:Z

    invoke-interface {p1, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 357
    const-string v0, "is-system"

    iget-boolean v1, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mIsSystemAuthority:Z

    invoke-interface {p1, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 358
    const-string/jumbo v0, "user-id"

    iget v1, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mUserId:I

    invoke-interface {p1, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 359
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mIsSystemAuthority:Z

    if-eqz v0, :cond_0

    .line 360
    const-string/jumbo v0, "system-entity"

    iget-object v1, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mSystemEntity:Ljava/lang/String;

    invoke-interface {p1, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 362
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mIsRoleAuthority:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mIsSystemAuthority:Z

    if-nez v0, :cond_2

    .line 363
    iget-object v0, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mComponentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    .line 364
    const-string v1, "class-name"

    .line 365
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 364
    invoke-interface {p1, v2, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 368
    :cond_1
    const-string v0, ";"

    .line 371
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getAuthorities()Ljava/util/Set;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    .line 368
    const-string v0, "authorities"

    invoke-interface {p1, v2, v0, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 420
    const-string v1, "EnforcingAdmin { mPackageName= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    iget-object v1, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    iget-object v1, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mComponentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    .line 423
    const-string v1, ", mComponentName= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    iget-object v1, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 426
    :cond_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mAuthorities:Ljava/util/Set;

    if-eqz v1, :cond_1

    .line 427
    const-string v1, ", mAuthorities= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    iget-object v1, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mAuthorities:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 430
    :cond_1
    const-string v1, ", mUserId= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    iget v1, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 432
    const-string v1, ", mIsRoleAuthority= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mIsRoleAuthority:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 434
    const-string v1, ", mIsSystemAuthority= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mIsSystemAuthority:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 436
    const-string v1, ", mSystemEntity = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    iget-object p0, p0, Lcom/android/server/devicepolicy/EnforcingAdmin;->mSystemEntity:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
