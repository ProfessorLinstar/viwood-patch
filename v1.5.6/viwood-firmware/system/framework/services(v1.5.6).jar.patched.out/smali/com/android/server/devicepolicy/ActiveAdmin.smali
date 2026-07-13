.class public Lcom/android/server/devicepolicy/ActiveAdmin;
.super Ljava/lang/Object;
.source "ActiveAdmin.java"


# static fields
.field public static final DEF_ORGANIZATION_COLOR:I


# instance fields
.field public final accountTypesWithManagementDisabled:Ljava/util/Set;

.field public crossProfileWidgetProviders:Ljava/util/List;

.field public final defaultEnabledRestrictionsAlreadySet:Ljava/util/Set;

.field public disableBluetoothContactSharing:Z

.field public disableCallerId:Z

.field public disableCamera:Z

.field public disableContactsSearch:Z

.field public disableScreenCapture:Z

.field public disabledKeyguardFeatures:I

.field public encryptionRequested:Z

.field public endUserSessionMessage:Ljava/lang/String;

.field public forceEphemeralUsers:Z

.field public globalProxyExclusionList:Ljava/lang/String;

.field public globalProxySpec:Ljava/lang/String;

.field public info:Landroid/app/admin/DeviceAdminInfo;

.field public isLogoutEnabled:Z

.field public isNetworkLoggingEnabled:Z

.field public final isParent:Z

.field public keepUninstalledPackages:Ljava/util/List;

.field public lastNetworkLoggingNotificationTimeMs:J

.field public longSupportMessage:Ljava/lang/CharSequence;

.field public mAdminCanGrantSensorsPermissions:Z

.field public mAlwaysOnVpnLockdown:Z

.field public mAlwaysOnVpnPackage:Ljava/lang/String;

.field public mCommonCriteriaMode:Z

.field public mCredentialManagerPolicy:Landroid/app/admin/PackagePolicy;

.field public mCrossProfileCalendarPackages:Ljava/util/List;

.field public mCrossProfilePackages:Ljava/util/List;

.field public mDialerPackage:Ljava/lang/String;

.field public mEnrollmentSpecificId:Ljava/lang/String;

.field public mFactoryResetProtectionPolicy:Landroid/app/admin/FactoryResetProtectionPolicy;

.field public mManagedProfileCallerIdAccess:Landroid/app/admin/PackagePolicy;

.field public mManagedProfileContactsAccess:Landroid/app/admin/PackagePolicy;

.field public mManagedSubscriptionsPolicy:Landroid/app/admin/ManagedSubscriptionsPolicy;

.field public mNearbyAppStreamingPolicy:I

.field public mNearbyNotificationStreamingPolicy:I

.field public mOrganizationId:Ljava/lang/String;

.field public mPasswordComplexity:I

.field public mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

.field public mPreferentialNetworkServiceConfigs:Ljava/util/List;

.field public mProfileMaximumTimeOffMillis:J

.field public mProfileOffDeadline:J

.field public mProvisioningContext:Ljava/lang/String;

.field public mSmsPackage:Ljava/lang/String;

.field public mSuspendPersonalApps:Z

.field public mUsbDataSignalingEnabled:Z

.field public mWifiMinimumSecurityLevel:I

.field public mWifiSsidPolicy:Landroid/app/admin/WifiSsidPolicy;

.field public maximumFailedPasswordsForWipe:I

.field public maximumTimeToUnlock:J

.field public meteredDisabledPackages:Ljava/util/List;

.field public mtePolicy:I

.field public numNetworkLoggingNotifications:I

.field public organizationColor:I

.field public organizationName:Ljava/lang/String;

.field public parentAdmin:Lcom/android/server/devicepolicy/ActiveAdmin;

.field public passwordExpirationDate:J

.field public passwordExpirationTimeout:J

.field public passwordHistoryLength:I

.field public permittedAccessiblityServices:Ljava/util/List;

.field public permittedInputMethods:Ljava/util/List;

.field public permittedNotificationListeners:Ljava/util/List;

.field public protectedPackages:Ljava/util/List;

.field public requireAutoTime:Z

.field public shortSupportMessage:Ljava/lang/CharSequence;

.field public specifiesGlobalProxy:Z

.field public startUserSessionMessage:Ljava/lang/String;

.field public strongAuthUnlockTimeout:J

.field public suspendedPackages:Ljava/util/List;

.field public testOnlyAdmin:Z

.field public trustAgentInfos:Landroid/util/ArrayMap;

.field public userRestrictions:Landroid/os/Bundle;


# direct methods
.method public static synthetic $r8$lambda$1nWGc_wvVWuAbWUlMYXRYykRVuE(Landroid/util/IndentingPrintWriter;Ljava/lang/String;)V
    .locals 0

    .line 1227
    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Qfu046a5YaKgv5serOCWIpek7ic(Landroid/net/wifi/WifiSsid;)Ljava/lang/String;
    .locals 2

    .line 719
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Landroid/net/wifi/WifiSsid;->getBytes()[B

    move-result-object p0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static synthetic $r8$lambda$q6ahR2FC7HWaNl5LPXznLd476c8(Ljava/lang/String;)Landroid/net/wifi/WifiSsid;
    .locals 1

    .line 1038
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-static {p0}, Landroid/net/wifi/WifiSsid;->fromBytes([B)Landroid/net/wifi/WifiSsid;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 310
    const-string v0, "#00796B"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/devicepolicy/ActiveAdmin;->DEF_ORGANIZATION_COLOR:I

    return-void
.end method

.method public constructor <init>(Landroid/app/admin/DeviceAdminInfo;Z)V
    .locals 6

    .line 364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 190
    iput v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->passwordHistoryLength:I

    .line 192
    new-instance v1, Landroid/app/admin/PasswordPolicy;

    invoke-direct {v1}, Landroid/app/admin/PasswordPolicy;-><init>()V

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    .line 195
    iput v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordComplexity:I

    const/4 v1, 0x3

    .line 198
    iput v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mNearbyNotificationStreamingPolicy:I

    .line 201
    iput v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mNearbyAppStreamingPolicy:I

    const/4 v1, 0x0

    .line 204
    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mFactoryResetProtectionPolicy:Landroid/app/admin/FactoryResetProtectionPolicy;

    const-wide/16 v2, 0x0

    .line 208
    iput-wide v2, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->maximumTimeToUnlock:J

    .line 210
    iput-wide v2, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->strongAuthUnlockTimeout:J

    .line 213
    iput v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->maximumFailedPasswordsForWipe:I

    .line 216
    iput-wide v2, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->passwordExpirationTimeout:J

    .line 219
    iput-wide v2, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->passwordExpirationDate:J

    .line 223
    iput v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disabledKeyguardFeatures:I

    .line 225
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->encryptionRequested:Z

    .line 226
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->testOnlyAdmin:Z

    .line 227
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disableCamera:Z

    .line 228
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disableCallerId:Z

    .line 229
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disableContactsSearch:Z

    const/4 v4, 0x1

    .line 230
    iput-boolean v4, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disableBluetoothContactSharing:Z

    .line 231
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disableScreenCapture:Z

    .line 232
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->requireAutoTime:Z

    .line 233
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->forceEphemeralUsers:Z

    .line 234
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->isNetworkLoggingEnabled:Z

    .line 235
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->isLogoutEnabled:Z

    .line 239
    iput v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->numNetworkLoggingNotifications:I

    .line 240
    iput-wide v2, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->lastNetworkLoggingNotificationTimeMs:J

    .line 242
    iput v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mtePolicy:I

    .line 257
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    iput-object v5, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->accountTypesWithManagementDisabled:Ljava/util/Set;

    .line 289
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->specifiesGlobalProxy:Z

    .line 290
    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->globalProxySpec:Ljava/lang/String;

    .line 291
    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->globalProxyExclusionList:Ljava/lang/String;

    .line 293
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    iput-object v5, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->trustAgentInfos:Landroid/util/ArrayMap;

    .line 303
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    iput-object v5, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->defaultEnabledRestrictionsAlreadySet:Ljava/util/Set;

    .line 306
    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->shortSupportMessage:Ljava/lang/CharSequence;

    .line 307
    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->longSupportMessage:Ljava/lang/CharSequence;

    .line 311
    sget v5, Lcom/android/server/devicepolicy/ActiveAdmin;->DEF_ORGANIZATION_COLOR:I

    iput v5, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->organizationColor:I

    .line 314
    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->organizationName:Ljava/lang/String;

    .line 317
    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->startUserSessionMessage:Ljava/lang/String;

    .line 318
    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->endUserSessionMessage:Ljava/lang/String;

    .line 323
    sget-object v5, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v5, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mCrossProfileCalendarPackages:Ljava/util/List;

    .line 328
    iput-object v5, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mCrossProfilePackages:Ljava/util/List;

    .line 331
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mSuspendPersonalApps:Z

    .line 333
    iput-wide v2, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mProfileMaximumTimeOffMillis:J

    .line 335
    iput-wide v2, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mProfileOffDeadline:J

    .line 338
    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mManagedProfileCallerIdAccess:Landroid/app/admin/PackagePolicy;

    .line 341
    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mManagedProfileContactsAccess:Landroid/app/admin/PackagePolicy;

    .line 344
    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mCredentialManagerPolicy:Landroid/app/admin/PackagePolicy;

    .line 352
    sget-object v1, Landroid/app/admin/PreferentialNetworkServiceConfig;->DEFAULT:Landroid/app/admin/PreferentialNetworkServiceConfig;

    .line 353
    invoke-static {v1}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPreferentialNetworkServiceConfigs:Ljava/util/List;

    .line 356
    iput-boolean v4, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mUsbDataSignalingEnabled:Z

    .line 358
    iput v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mWifiMinimumSecurityLevel:I

    .line 365
    iput-object p1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    .line 366
    iput-boolean p2, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->isParent:Z

    return-void
.end method


# virtual methods
.method public dump(Landroid/util/IndentingPrintWriter;)V
    .locals 3

    .line 1234
    const-string/jumbo v0, "uid="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1235
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/ActiveAdmin;->getUid()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 1237
    const-string/jumbo v0, "testOnlyAdmin="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1238
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->testOnlyAdmin:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 1240
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    if-eqz v0, :cond_1

    .line 1241
    const-string/jumbo v0, "policies:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1242
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getUsedPolicies()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1244
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 v1, 0x0

    .line 1245
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1246
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    iget-object v2, v2, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->tag:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1248
    :cond_0
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1252
    :cond_1
    const-string/jumbo v0, "passwordQuality=0x"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1253
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v0, v0, Landroid/app/admin/PasswordPolicy;->quality:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1255
    const-string/jumbo v0, "minimumPasswordLength="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1256
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v0, v0, Landroid/app/admin/PasswordPolicy;->length:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 1258
    const-string/jumbo v0, "passwordHistoryLength="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1259
    iget v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->passwordHistoryLength:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 1261
    const-string/jumbo v0, "minimumPasswordUpperCase="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1262
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v0, v0, Landroid/app/admin/PasswordPolicy;->upperCase:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 1264
    const-string/jumbo v0, "minimumPasswordLowerCase="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1265
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v0, v0, Landroid/app/admin/PasswordPolicy;->lowerCase:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 1267
    const-string/jumbo v0, "minimumPasswordLetters="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1268
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v0, v0, Landroid/app/admin/PasswordPolicy;->letters:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 1270
    const-string/jumbo v0, "minimumPasswordNumeric="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1271
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v0, v0, Landroid/app/admin/PasswordPolicy;->numeric:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 1273
    const-string/jumbo v0, "minimumPasswordSymbols="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1274
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v0, v0, Landroid/app/admin/PasswordPolicy;->symbols:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 1276
    const-string/jumbo v0, "minimumPasswordNonLetter="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1277
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v0, v0, Landroid/app/admin/PasswordPolicy;->nonLetter:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 1279
    const-string/jumbo v0, "maximumTimeToUnlock="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1280
    iget-wide v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->maximumTimeToUnlock:J

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->println(J)V

    .line 1282
    const-string/jumbo v0, "strongAuthUnlockTimeout="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1283
    iget-wide v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->strongAuthUnlockTimeout:J

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->println(J)V

    .line 1285
    const-string/jumbo v0, "maximumFailedPasswordsForWipe="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1286
    iget v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->maximumFailedPasswordsForWipe:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 1288
    const-string/jumbo v0, "specifiesGlobalProxy="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1289
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->specifiesGlobalProxy:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 1291
    const-string/jumbo v0, "passwordExpirationTimeout="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1292
    iget-wide v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->passwordExpirationTimeout:J

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->println(J)V

    .line 1294
    const-string/jumbo v0, "passwordExpirationDate="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1295
    iget-wide v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->passwordExpirationDate:J

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->println(J)V

    .line 1297
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->globalProxySpec:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1298
    const-string v0, "globalProxySpec="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1299
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->globalProxySpec:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1301
    :cond_2
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->globalProxyExclusionList:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1302
    const-string v0, "globalProxyEclusionList="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1303
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->globalProxyExclusionList:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1305
    :cond_3
    const-string v0, "encryptionRequested="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1306
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->encryptionRequested:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 1308
    const-string v0, "disableCallerId="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1309
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disableCallerId:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 1311
    const-string v0, "disableContactsSearch="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1312
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disableContactsSearch:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 1314
    const-string v0, "disableBluetoothContactSharing="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1315
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disableBluetoothContactSharing:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 1317
    const-string v0, "forceEphemeralUsers="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1318
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->forceEphemeralUsers:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 1320
    const-string/jumbo v0, "isNetworkLoggingEnabled="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1321
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->isNetworkLoggingEnabled:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 1323
    const-string v0, "disabledKeyguardFeatures="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1324
    iget v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disabledKeyguardFeatures:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 1326
    const-string v0, "crossProfileWidgetProviders="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1327
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 1329
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->permittedAccessiblityServices:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 1330
    const-string/jumbo v0, "permittedAccessibilityServices="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1331
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->permittedAccessiblityServices:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 1334
    :cond_4
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->permittedNotificationListeners:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 1335
    const-string/jumbo v0, "permittedNotificationListeners="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1336
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->permittedNotificationListeners:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 1339
    :cond_5
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->keepUninstalledPackages:Ljava/util/List;

    if-eqz v0, :cond_6

    .line 1340
    const-string/jumbo v0, "keepUninstalledPackages="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1341
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->keepUninstalledPackages:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 1344
    :cond_6
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->meteredDisabledPackages:Ljava/util/List;

    if-eqz v0, :cond_7

    .line 1345
    const-string/jumbo v0, "meteredDisabledPackages="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1346
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->meteredDisabledPackages:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 1349
    :cond_7
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->protectedPackages:Ljava/util/List;

    if-eqz v0, :cond_8

    .line 1350
    const-string/jumbo v0, "protectedPackages="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1351
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->protectedPackages:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 1354
    :cond_8
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->suspendedPackages:Ljava/util/List;

    if-eqz v0, :cond_9

    .line 1355
    const-string/jumbo v0, "suspendedPackages="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1356
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->suspendedPackages:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 1359
    :cond_9
    const-string/jumbo v0, "organizationColor="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1360
    iget v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->organizationColor:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 1362
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->organizationName:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 1363
    const-string/jumbo v0, "organizationName="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1364
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->organizationName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1367
    :cond_a
    const-string v0, "defaultEnabledRestrictionsAlreadySet="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1368
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->defaultEnabledRestrictionsAlreadySet:Ljava/util/Set;

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 1371
    const-string/jumbo v0, "managedProfileCallerIdPolicy"

    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mManagedProfileCallerIdAccess:Landroid/app/admin/PackagePolicy;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->dumpPackagePolicy(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Landroid/app/admin/PackagePolicy;)V

    .line 1374
    const-string/jumbo v0, "managedProfileContactsPolicy"

    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mManagedProfileContactsAccess:Landroid/app/admin/PackagePolicy;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->dumpPackagePolicy(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Landroid/app/admin/PackagePolicy;)V

    .line 1377
    const-string v0, "credentialManagerPolicy"

    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mCredentialManagerPolicy:Landroid/app/admin/PackagePolicy;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->dumpPackagePolicy(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Landroid/app/admin/PackagePolicy;)V

    .line 1380
    const-string/jumbo v0, "isParent="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1381
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->isParent:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 1383
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->parentAdmin:Lcom/android/server/devicepolicy/ActiveAdmin;

    if-eqz v0, :cond_b

    .line 1384
    const-string/jumbo v0, "parentAdmin:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1385
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1386
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->parentAdmin:Lcom/android/server/devicepolicy/ActiveAdmin;

    invoke-virtual {v0, p1}, Lcom/android/server/devicepolicy/ActiveAdmin;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 1387
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1390
    :cond_b
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mCrossProfileCalendarPackages:Ljava/util/List;

    if-eqz v0, :cond_c

    .line 1391
    const-string/jumbo v0, "mCrossProfileCalendarPackages="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1392
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mCrossProfileCalendarPackages:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 1395
    :cond_c
    const-string/jumbo v0, "mCrossProfilePackages="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1396
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mCrossProfilePackages:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 1398
    const-string/jumbo v0, "mSuspendPersonalApps="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1399
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mSuspendPersonalApps:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 1401
    const-string/jumbo v0, "mProfileMaximumTimeOffMillis="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1402
    iget-wide v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mProfileMaximumTimeOffMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->println(J)V

    .line 1404
    const-string/jumbo v0, "mProfileOffDeadline="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1405
    iget-wide v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mProfileOffDeadline:J

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->println(J)V

    .line 1407
    const-string/jumbo v0, "mAlwaysOnVpnPackage="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1408
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mAlwaysOnVpnPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1410
    const-string/jumbo v0, "mAlwaysOnVpnLockdown="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1411
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mAlwaysOnVpnLockdown:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 1413
    const-string/jumbo v0, "mCommonCriteriaMode="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1414
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mCommonCriteriaMode:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 1416
    const-string/jumbo v0, "mPasswordComplexity="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1417
    iget v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordComplexity:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 1419
    const-string/jumbo v0, "mNearbyNotificationStreamingPolicy="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1420
    iget v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mNearbyNotificationStreamingPolicy:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 1422
    const-string/jumbo v0, "mNearbyAppStreamingPolicy="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1423
    iget v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mNearbyAppStreamingPolicy:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 1425
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mOrganizationId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1426
    const-string/jumbo v0, "mOrganizationId="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1427
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mOrganizationId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1430
    :cond_d
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mEnrollmentSpecificId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 1431
    const-string/jumbo v0, "mEnrollmentSpecificId="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1432
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mEnrollmentSpecificId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1435
    :cond_e
    const-string/jumbo v0, "mAdminCanGrantSensorsPermissions="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1436
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mAdminCanGrantSensorsPermissions:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 1438
    const-string/jumbo v0, "mWifiMinimumSecurityLevel="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1439
    iget v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mWifiMinimumSecurityLevel:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 1441
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mWifiSsidPolicy:Landroid/app/admin/WifiSsidPolicy;

    if-eqz v0, :cond_10

    .line 1442
    invoke-virtual {v0}, Landroid/app/admin/WifiSsidPolicy;->getPolicyType()I

    move-result v0

    if-nez v0, :cond_f

    .line 1443
    const-string/jumbo v0, "mSsidAllowlist="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 1445
    :cond_f
    const-string/jumbo v0, "mSsidDenylist="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1447
    :goto_1
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mWifiSsidPolicy:Landroid/app/admin/WifiSsidPolicy;

    invoke-virtual {v0}, Landroid/app/admin/WifiSsidPolicy;->getSsids()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->ssidsToStrings(Ljava/util/Set;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 1450
    :cond_10
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mFactoryResetProtectionPolicy:Landroid/app/admin/FactoryResetProtectionPolicy;

    if-eqz v0, :cond_11

    .line 1451
    const-string/jumbo v0, "mFactoryResetProtectionPolicy:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1452
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1453
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mFactoryResetProtectionPolicy:Landroid/app/admin/FactoryResetProtectionPolicy;

    invoke-virtual {v0, p1}, Landroid/app/admin/FactoryResetProtectionPolicy;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 1454
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1457
    :cond_11
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPreferentialNetworkServiceConfigs:Ljava/util/List;

    if-eqz v0, :cond_13

    .line 1458
    const-string/jumbo v0, "mPreferentialNetworkServiceConfigs:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1459
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1460
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPreferentialNetworkServiceConfigs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/PreferentialNetworkServiceConfig;

    .line 1461
    invoke-virtual {v1, p1}, Landroid/app/admin/PreferentialNetworkServiceConfig;->dump(Landroid/util/IndentingPrintWriter;)V

    goto :goto_2

    .line 1463
    :cond_12
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1466
    :cond_13
    const-string/jumbo v0, "mtePolicy="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1467
    iget v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mtePolicy:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 1469
    const-string v0, "accountTypesWithManagementDisabled="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1470
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->accountTypesWithManagementDisabled:Ljava/util/Set;

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 1472
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mManagedSubscriptionsPolicy:Landroid/app/admin/ManagedSubscriptionsPolicy;

    if-eqz v0, :cond_14

    .line 1473
    const-string/jumbo v0, "mManagedSubscriptionsPolicy:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1474
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1475
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mManagedSubscriptionsPolicy:Landroid/app/admin/ManagedSubscriptionsPolicy;

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 1476
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1479
    :cond_14
    const-string/jumbo v0, "mDialerPackage="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1480
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mDialerPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1481
    const-string/jumbo v0, "mSmsPackage="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1482
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mSmsPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1485
    const-string/jumbo v0, "mProvisioningContext="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1486
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mProvisioningContext:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1489
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    if-eqz v0, :cond_15

    .line 1490
    const-string v0, "DeviceAdminInfo:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1491
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1492
    iget-object p0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    new-instance v0, Landroid/util/PrintWriterPrinter;

    invoke-direct {v0, p1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Landroid/app/admin/DeviceAdminInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 1493
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_15
    return-void
.end method

.method public dumpPackagePolicy(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Landroid/app/admin/PackagePolicy;)V
    .locals 0

    .line 1219
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1220
    const-string p0, ":"

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 1222
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1223
    const-string/jumbo p0, "policyType="

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1224
    invoke-virtual {p3}, Landroid/app/admin/PackagePolicy;->getPolicyType()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 1225
    const-string/jumbo p0, "packageNames:"

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1226
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1227
    invoke-virtual {p3}, Landroid/app/admin/PackagePolicy;->getPackageNames()Ljava/util/Set;

    move-result-object p0

    new-instance p2, Lcom/android/server/devicepolicy/ActiveAdmin$$ExternalSyntheticLambda2;

    invoke-direct {p2, p1}, Lcom/android/server/devicepolicy/ActiveAdmin$$ExternalSyntheticLambda2;-><init>(Landroid/util/IndentingPrintWriter;)V

    invoke-interface {p0, p2}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 1228
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1229
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_0
    return-void
.end method

.method public ensureUserRestrictions()Landroid/os/Bundle;
    .locals 1

    .line 1160
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->userRestrictions:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 1161
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->userRestrictions:Landroid/os/Bundle;

    .line 1163
    :cond_0
    iget-object p0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->userRestrictions:Landroid/os/Bundle;

    return-object p0
.end method

.method public final getAllTrustAgentInfos(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Landroid/util/ArrayMap;
    .locals 5

    .line 1091
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v0

    .line 1093
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 1094
    :cond_0
    :goto_0
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 1095
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_4

    :cond_1
    if-eq v2, v3, :cond_0

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    goto :goto_0

    .line 1099
    :cond_2
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1100
    const-string v3, "component"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v2, 0x0

    .line 1101
    const-string/jumbo v3, "value"

    invoke-interface {p1, v2, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1102
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/ActiveAdmin;->getTrustAgentInfo(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Lcom/android/server/devicepolicy/ActiveAdmin$TrustAgentInfo;

    move-result-object v3

    .line 1103
    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1105
    :cond_3
    const-string v3, "Unknown tag under %s: %s"

    filled-new-array {p2, v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v4, "DevicePolicyManager"

    invoke-static {v4, v3, v2}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method public getParentActiveAdmin()Lcom/android/server/devicepolicy/ActiveAdmin;
    .locals 3

    .line 370
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->isParent:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 372
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->parentAdmin:Lcom/android/server/devicepolicy/ActiveAdmin;

    if-nez v0, :cond_0

    .line 373
    new-instance v0, Lcom/android/server/devicepolicy/ActiveAdmin;

    iget-object v2, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-direct {v0, v2, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;-><init>(Landroid/app/admin/DeviceAdminInfo;Z)V

    iput-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->parentAdmin:Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 375
    :cond_0
    iget-object p0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->parentAdmin:Lcom/android/server/devicepolicy/ActiveAdmin;

    return-object p0
.end method

.method public final getPreferentialNetworkServiceConfigs(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Ljava/util/List;
    .locals 4

    .line 1134
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result p0

    .line 1136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1137
    :cond_0
    :goto_0
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 1138
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v3

    if-le v3, p0, :cond_4

    :cond_1
    if-eq v1, v2, :cond_0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    goto :goto_0

    .line 1142
    :cond_2
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1143
    const-string/jumbo v2, "preferential_network_service_config"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1145
    invoke-static {p1, p2}, Landroid/app/admin/PreferentialNetworkServiceConfig;->getPreferentialNetworkServiceConfig(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Landroid/app/admin/PreferentialNetworkServiceConfig;

    move-result-object v1

    .line 1147
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1149
    :cond_3
    const-string v2, "Unknown tag under %s: %s"

    filled-new-array {p2, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "DevicePolicyManager"

    invoke-static {v3, v2, v1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public final getTrustAgentInfo(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Lcom/android/server/devicepolicy/ActiveAdmin$TrustAgentInfo;
    .locals 4

    .line 1113
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result p0

    .line 1115
    new-instance v0, Lcom/android/server/devicepolicy/ActiveAdmin$TrustAgentInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/devicepolicy/ActiveAdmin$TrustAgentInfo;-><init>(Landroid/os/PersistableBundle;)V

    .line 1116
    :cond_0
    :goto_0
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 1117
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v3

    if-le v3, p0, :cond_4

    :cond_1
    if-eq v1, v2, :cond_0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    goto :goto_0

    .line 1121
    :cond_2
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1122
    const-string/jumbo v2, "trust-agent-component-options"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1123
    invoke-static {p1}, Landroid/os/PersistableBundle;->restoreFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/devicepolicy/ActiveAdmin$TrustAgentInfo;->options:Landroid/os/PersistableBundle;

    goto :goto_0

    .line 1125
    :cond_3
    const-string v2, "Unknown tag under %s: %s"

    filled-new-array {p2, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "DevicePolicyManager"

    invoke-static {v3, v2, v1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public getUid()I
    .locals 0

    .line 383
    iget-object p0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {p0}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    return p0
.end method

.method public getUserHandle()Landroid/os/UserHandle;
    .locals 0

    .line 387
    iget-object p0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {p0}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    return-object p0
.end method

.method public hasParentActiveAdmin()Z
    .locals 0

    .line 379
    iget-object p0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->parentAdmin:Lcom/android/server/devicepolicy/ActiveAdmin;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public hasUserRestrictions()Z
    .locals 0

    .line 1156
    iget-object p0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->userRestrictions:Landroid/os/Bundle;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/os/Bundle;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final readAttributeValues(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Ljava/util/Collection;)V
    .locals 3

    .line 1071
    invoke-interface {p3}, Ljava/util/Collection;->clear()V

    .line 1072
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result p0

    .line 1074
    :cond_0
    :goto_0
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 1075
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v2

    if-le v2, p0, :cond_4

    :cond_1
    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    goto :goto_0

    .line 1079
    :cond_2
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1080
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    .line 1081
    const-string/jumbo v1, "value"

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1083
    :cond_3
    const-string v1, "Expected tag %s but found %s"

    filled-new-array {p2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "DevicePolicyManager"

    invoke-static {v2, v1, v0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;Z)V
    .locals 9

    .line 779
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v0

    .line 781
    :cond_0
    :goto_0
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_59

    const/4 v3, 0x3

    if-ne v1, v3, :cond_1

    .line 782
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_59

    :cond_1
    if-eq v1, v3, :cond_0

    const/4 v3, 0x4

    if-ne v1, v3, :cond_2

    goto :goto_0

    .line 786
    :cond_2
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 787
    const-string/jumbo v4, "policies"

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "DevicePolicyManager"

    if-eqz v4, :cond_3

    if-eqz p2, :cond_0

    .line 789
    const-string v1, "Overriding device admin policies from XML."

    invoke-static {v5, v1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v1, p1}, Landroid/app/admin/DeviceAdminInfo;->readPoliciesFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)V

    goto :goto_0

    .line 792
    :cond_3
    const-string/jumbo v4, "password-quality"

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string/jumbo v6, "value"

    const/4 v7, 0x0

    if-eqz v4, :cond_4

    .line 793
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    invoke-interface {p1, v7, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Landroid/app/admin/PasswordPolicy;->quality:I

    goto :goto_0

    .line 794
    :cond_4
    const-string/jumbo v4, "min-password-length"

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 795
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    invoke-interface {p1, v7, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Landroid/app/admin/PasswordPolicy;->length:I

    goto :goto_0

    .line 796
    :cond_5
    const-string/jumbo v4, "password-history-length"

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 797
    invoke-interface {p1, v7, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->passwordHistoryLength:I

    goto :goto_0

    .line 798
    :cond_6
    const-string/jumbo v4, "min-password-uppercase"

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 799
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    invoke-interface {p1, v7, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Landroid/app/admin/PasswordPolicy;->upperCase:I

    goto :goto_0

    .line 800
    :cond_7
    const-string/jumbo v4, "min-password-lowercase"

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 801
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    invoke-interface {p1, v7, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Landroid/app/admin/PasswordPolicy;->lowerCase:I

    goto/16 :goto_0

    .line 802
    :cond_8
    const-string/jumbo v4, "min-password-letters"

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 803
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    invoke-interface {p1, v7, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Landroid/app/admin/PasswordPolicy;->letters:I

    goto/16 :goto_0

    .line 804
    :cond_9
    const-string/jumbo v4, "min-password-numeric"

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 805
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    invoke-interface {p1, v7, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Landroid/app/admin/PasswordPolicy;->numeric:I

    goto/16 :goto_0

    .line 806
    :cond_a
    const-string/jumbo v4, "min-password-symbols"

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 807
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    invoke-interface {p1, v7, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Landroid/app/admin/PasswordPolicy;->symbols:I

    goto/16 :goto_0

    .line 808
    :cond_b
    const-string/jumbo v4, "min-password-nonletter"

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 809
    iget-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    invoke-interface {p1, v7, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Landroid/app/admin/PasswordPolicy;->nonLetter:I

    goto/16 :goto_0

    .line 810
    :cond_c
    const-string/jumbo v4, "max-time-to-unlock"

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 811
    invoke-interface {p1, v7, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->maximumTimeToUnlock:J

    goto/16 :goto_0

    .line 812
    :cond_d
    const-string/jumbo v4, "strong-auth-unlock-timeout"

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 813
    invoke-interface {p1, v7, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->strongAuthUnlockTimeout:J

    goto/16 :goto_0

    .line 814
    :cond_e
    const-string/jumbo v4, "max-failed-password-wipe"

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 815
    invoke-interface {p1, v7, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->maximumFailedPasswordsForWipe:I

    goto/16 :goto_0

    .line 816
    :cond_f
    const-string/jumbo v4, "specifies-global-proxy"

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v8, 0x0

    if-eqz v4, :cond_10

    .line 817
    invoke-interface {p1, v7, v6, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->specifiesGlobalProxy:Z

    goto/16 :goto_0

    .line 818
    :cond_10
    const-string v4, "global-proxy-spec"

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 820
    invoke-interface {p1, v7, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->globalProxySpec:Ljava/lang/String;

    goto/16 :goto_0

    .line 821
    :cond_11
    const-string v4, "global-proxy-exclusion-list"

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 823
    invoke-interface {p1, v7, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->globalProxyExclusionList:Ljava/lang/String;

    goto/16 :goto_0

    .line 824
    :cond_12
    const-string/jumbo v4, "password-expiration-timeout"

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 825
    invoke-interface {p1, v7, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->passwordExpirationTimeout:J

    goto/16 :goto_0

    .line 826
    :cond_13
    const-string/jumbo v4, "password-expiration-date"

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 827
    invoke-interface {p1, v7, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->passwordExpirationDate:J

    goto/16 :goto_0

    .line 828
    :cond_14
    const-string v4, "encryption-requested"

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 829
    invoke-interface {p1, v7, v6, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->encryptionRequested:Z

    goto/16 :goto_0

    .line 830
    :cond_15
    const-string/jumbo v4, "test-only-admin"

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 831
    invoke-interface {p1, v7, v6, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->testOnlyAdmin:Z

    goto/16 :goto_0

    .line 832
    :cond_16
    const-string v4, "disable-camera"

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 833
    invoke-interface {p1, v7, v6, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disableCamera:Z

    goto/16 :goto_0

    .line 834
    :cond_17
    const-string v4, "disable-caller-id"

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 835
    invoke-interface {p1, v7, v6, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disableCallerId:Z

    goto/16 :goto_0

    .line 836
    :cond_18
    const-string v4, "disable-contacts-search"

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 837
    invoke-interface {p1, v7, v6, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disableContactsSearch:Z

    goto/16 :goto_0

    .line 838
    :cond_19
    const-string v4, "disable-bt-contacts-sharing"

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 840
    invoke-interface {p1, v7, v6, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disableBluetoothContactSharing:Z

    goto/16 :goto_0

    .line 841
    :cond_1a
    const-string v4, "disable-screen-capture"

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 842
    invoke-interface {p1, v7, v6, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disableScreenCapture:Z

    goto/16 :goto_0

    .line 843
    :cond_1b
    const-string/jumbo v4, "require_auto_time"

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 844
    invoke-interface {p1, v7, v6, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->requireAutoTime:Z

    goto/16 :goto_0

    .line 845
    :cond_1c
    const-string v4, "force_ephemeral_users"

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 846
    invoke-interface {p1, v7, v6, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->forceEphemeralUsers:Z

    goto/16 :goto_0

    .line 847
    :cond_1d
    const-string/jumbo v4, "is_network_logging_enabled"

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 848
    invoke-interface {p1, v7, v6, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->isNetworkLoggingEnabled:Z

    .line 849
    const-string/jumbo v1, "last-notification"

    invoke-interface {p1, v7, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->lastNetworkLoggingNotificationTimeMs:J

    .line 851
    const-string/jumbo v1, "num-notifications"

    invoke-interface {p1, v7, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->numNetworkLoggingNotifications:I

    goto/16 :goto_0

    .line 853
    :cond_1e
    const-string v4, "disable-keyguard-features"

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 854
    invoke-interface {p1, v7, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disabledKeyguardFeatures:I

    goto/16 :goto_0

    .line 855
    :cond_1f
    const-string v4, "disable-account-management"

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 856
    const-string v1, "account-type"

    iget-object v2, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->accountTypesWithManagementDisabled:Ljava/util/Set;

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/devicepolicy/ActiveAdmin;->readAttributeValues(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Ljava/util/Collection;)V

    goto/16 :goto_0

    .line 858
    :cond_20
    const-string/jumbo v4, "manage-trust-agent-features"

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 859
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->getAllTrustAgentInfos(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Landroid/util/ArrayMap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->trustAgentInfos:Landroid/util/ArrayMap;

    goto/16 :goto_0

    .line 860
    :cond_21
    const-string v4, "cross-profile-widget-providers"

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 861
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    .line 862
    const-string/jumbo v2, "provider"

    invoke-virtual {p0, p1, v2, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->readAttributeValues(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Ljava/util/Collection;)V

    goto/16 :goto_0

    .line 863
    :cond_22
    const-string/jumbo v4, "permitted-accessiblity-services"

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 864
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->readPackageList(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->permittedAccessiblityServices:Ljava/util/List;

    goto/16 :goto_0

    .line 865
    :cond_23
    const-string/jumbo v4, "permitted-imes"

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 866
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->readPackageList(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->permittedInputMethods:Ljava/util/List;

    goto/16 :goto_0

    .line 867
    :cond_24
    const-string/jumbo v4, "permitted-notification-listeners"

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 868
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->readPackageList(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->permittedNotificationListeners:Ljava/util/List;

    goto/16 :goto_0

    .line 869
    :cond_25
    const-string/jumbo v4, "keep-uninstalled-packages"

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 870
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->readPackageList(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->keepUninstalledPackages:Ljava/util/List;

    goto/16 :goto_0

    .line 871
    :cond_26
    const-string/jumbo v4, "metered_data_disabled_packages"

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 872
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->readPackageList(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->meteredDisabledPackages:Ljava/util/List;

    goto/16 :goto_0

    .line 873
    :cond_27
    const-string/jumbo v4, "protected_packages"

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 874
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->readPackageList(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->protectedPackages:Ljava/util/List;

    goto/16 :goto_0

    .line 875
    :cond_28
    const-string/jumbo v4, "suspended-packages"

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 876
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->readPackageList(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->suspendedPackages:Ljava/util/List;

    goto/16 :goto_0

    .line 877
    :cond_29
    const-string/jumbo v4, "user-restrictions"

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 878
    invoke-static {p1}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->userRestrictions:Landroid/os/Bundle;

    goto/16 :goto_0

    .line 879
    :cond_2a
    const-string v4, "default-enabled-user-restrictions"

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 880
    const-string/jumbo v1, "restriction"

    iget-object v2, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->defaultEnabledRestrictionsAlreadySet:Ljava/util/Set;

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/devicepolicy/ActiveAdmin;->readAttributeValues(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Ljava/util/Collection;)V

    goto/16 :goto_0

    .line 882
    :cond_2b
    const-string/jumbo v4, "short-support-message"

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 883
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v1

    if-ne v1, v3, :cond_2c

    .line 885
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->shortSupportMessage:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 887
    :cond_2c
    const-string v1, "Missing text when loading short support message"

    invoke-static {v5, v1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 889
    :cond_2d
    const-string/jumbo v4, "long-support-message"

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 890
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v1

    if-ne v1, v3, :cond_2e

    .line 892
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->longSupportMessage:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 894
    :cond_2e
    const-string v1, "Missing text when loading long support message"

    invoke-static {v5, v1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 896
    :cond_2f
    const-string/jumbo v4, "parent-admin"

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 897
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->isParent:Z

    xor-int/2addr v1, v2

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 898
    new-instance v1, Lcom/android/server/devicepolicy/ActiveAdmin;

    iget-object v3, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-direct {v1, v3, v2}, Lcom/android/server/devicepolicy/ActiveAdmin;-><init>(Landroid/app/admin/DeviceAdminInfo;Z)V

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->parentAdmin:Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 899
    invoke-virtual {v1, p1, p2}, Lcom/android/server/devicepolicy/ActiveAdmin;->readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;Z)V

    goto/16 :goto_0

    .line 900
    :cond_30
    const-string/jumbo v4, "organization-color"

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 901
    invoke-interface {p1, v7, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->organizationColor:I

    goto/16 :goto_0

    .line 902
    :cond_31
    const-string/jumbo v4, "organization-name"

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 903
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v1

    if-ne v1, v3, :cond_32

    .line 905
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->organizationName:Ljava/lang/String;

    goto/16 :goto_0

    .line 907
    :cond_32
    const-string v1, "Missing text when loading organization name"

    invoke-static {v5, v1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 909
    :cond_33
    const-string/jumbo v4, "is_logout_enabled"

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 910
    invoke-interface {p1, v7, v6, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->isLogoutEnabled:Z

    goto/16 :goto_0

    .line 911
    :cond_34
    const-string/jumbo v4, "start_user_session_message"

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 912
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v1

    if-ne v1, v3, :cond_35

    .line 914
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->startUserSessionMessage:Ljava/lang/String;

    goto/16 :goto_0

    .line 916
    :cond_35
    const-string v1, "Missing text when loading start session message"

    invoke-static {v5, v1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 918
    :cond_36
    const-string v4, "end_user_session_message"

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 919
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v1

    if-ne v1, v3, :cond_37

    .line 921
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->endUserSessionMessage:Ljava/lang/String;

    goto/16 :goto_0

    .line 923
    :cond_37
    const-string v1, "Missing text when loading end session message"

    invoke-static {v5, v1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 925
    :cond_38
    const-string v4, "cross-profile-calendar-packages"

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_39

    .line 926
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->readPackageList(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mCrossProfileCalendarPackages:Ljava/util/List;

    goto/16 :goto_0

    .line 927
    :cond_39
    const-string v4, "cross-profile-calendar-packages-null"

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 928
    iput-object v7, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mCrossProfileCalendarPackages:Ljava/util/List;

    goto/16 :goto_0

    .line 929
    :cond_3a
    const-string v4, "cross-profile-packages"

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 930
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->readPackageList(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mCrossProfilePackages:Ljava/util/List;

    goto/16 :goto_0

    .line 931
    :cond_3b
    const-string v4, "factory_reset_protection_policy"

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 932
    invoke-static {p1}, Landroid/app/admin/FactoryResetProtectionPolicy;->readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/admin/FactoryResetProtectionPolicy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mFactoryResetProtectionPolicy:Landroid/app/admin/FactoryResetProtectionPolicy;

    goto/16 :goto_0

    .line 934
    :cond_3c
    const-string/jumbo v4, "suspend-personal-apps"

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 935
    invoke-interface {p1, v7, v6, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mSuspendPersonalApps:Z

    goto/16 :goto_0

    .line 936
    :cond_3d
    const-string/jumbo v4, "profile-max-time-off"

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 938
    invoke-interface {p1, v7, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mProfileMaximumTimeOffMillis:J

    goto/16 :goto_0

    .line 939
    :cond_3e
    const-string/jumbo v4, "profile-off-deadline"

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 941
    invoke-interface {p1, v7, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mProfileOffDeadline:J

    goto/16 :goto_0

    .line 942
    :cond_3f
    const-string/jumbo v4, "vpn-package"

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 943
    invoke-interface {p1, v7, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mAlwaysOnVpnPackage:Ljava/lang/String;

    goto/16 :goto_0

    .line 944
    :cond_40
    const-string/jumbo v4, "vpn-lockdown"

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_41

    .line 945
    invoke-interface {p1, v7, v6, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mAlwaysOnVpnLockdown:Z

    goto/16 :goto_0

    .line 946
    :cond_41
    const-string/jumbo v4, "preferential-network-service-enabled"

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_42

    .line 947
    invoke-interface {p1, v7, v6, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 951
    new-instance v3, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    invoke-direct {v3}, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;-><init>()V

    .line 953
    invoke-virtual {v3, v1}, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->setEnabled(Z)Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    .line 954
    invoke-virtual {v3, v2}, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->setNetworkId(I)Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    .line 955
    invoke-virtual {v3}, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->build()Landroid/app/admin/PreferentialNetworkServiceConfig;

    move-result-object v1

    invoke-static {v1}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPreferentialNetworkServiceConfigs:Ljava/util/List;

    goto/16 :goto_0

    .line 957
    :cond_42
    const-string v4, "common-criteria-mode"

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 958
    invoke-interface {p1, v7, v6, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mCommonCriteriaMode:Z

    goto/16 :goto_0

    .line 959
    :cond_43
    const-string/jumbo v4, "password-complexity"

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_44

    .line 960
    invoke-interface {p1, v7, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordComplexity:I

    goto/16 :goto_0

    .line 961
    :cond_44
    const-string/jumbo v4, "nearby-notification-streaming-policy"

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45

    .line 962
    invoke-interface {p1, v7, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mNearbyNotificationStreamingPolicy:I

    goto/16 :goto_0

    .line 963
    :cond_45
    const-string/jumbo v4, "nearby-app-streaming-policy"

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_46

    .line 964
    invoke-interface {p1, v7, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mNearbyAppStreamingPolicy:I

    goto/16 :goto_0

    .line 965
    :cond_46
    const-string/jumbo v4, "organization-id"

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_48

    .line 966
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v1

    if-ne v1, v3, :cond_47

    .line 968
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mOrganizationId:Ljava/lang/String;

    goto/16 :goto_0

    .line 970
    :cond_47
    const-string v1, "Missing Organization ID."

    invoke-static {v5, v1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 972
    :cond_48
    const-string v4, "enrollment-specific-id"

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 973
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v1

    if-ne v1, v3, :cond_49

    .line 975
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mEnrollmentSpecificId:Ljava/lang/String;

    goto/16 :goto_0

    .line 977
    :cond_49
    const-string v1, "Missing Enrollment-specific ID."

    invoke-static {v5, v1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 979
    :cond_4a
    const-string v3, "admin-can-grant-sensors-permissions"

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 980
    invoke-interface {p1, v7, v6, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mAdminCanGrantSensorsPermissions:Z

    goto/16 :goto_0

    .line 982
    :cond_4b
    const-string/jumbo v3, "usb-data-signaling"

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 983
    invoke-interface {p1, v7, v6, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mUsbDataSignalingEnabled:Z

    goto/16 :goto_0

    .line 985
    :cond_4c
    const-string/jumbo v3, "wifi-min-security"

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 986
    invoke-interface {p1, v7, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mWifiMinimumSecurityLevel:I

    goto/16 :goto_0

    .line 987
    :cond_4d
    const-string/jumbo v3, "ssid-allowlist"

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string/jumbo v4, "ssid"

    if-eqz v3, :cond_4e

    .line 988
    invoke-virtual {p0, p1, v4}, Lcom/android/server/devicepolicy/ActiveAdmin;->readWifiSsids(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 989
    new-instance v2, Landroid/app/admin/WifiSsidPolicy;

    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-direct {v2, v8, v3}, Landroid/app/admin/WifiSsidPolicy;-><init>(ILjava/util/Set;)V

    iput-object v2, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mWifiSsidPolicy:Landroid/app/admin/WifiSsidPolicy;

    goto/16 :goto_0

    .line 991
    :cond_4e
    const-string/jumbo v3, "ssid-denylist"

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 992
    invoke-virtual {p0, p1, v4}, Lcom/android/server/devicepolicy/ActiveAdmin;->readWifiSsids(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 993
    new-instance v3, Landroid/app/admin/WifiSsidPolicy;

    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-direct {v3, v2, v4}, Landroid/app/admin/WifiSsidPolicy;-><init>(ILjava/util/Set;)V

    iput-object v3, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mWifiSsidPolicy:Landroid/app/admin/WifiSsidPolicy;

    goto/16 :goto_0

    .line 995
    :cond_4f
    const-string/jumbo v2, "preferential_network_service_configs"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_50

    .line 997
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->getPreferentialNetworkServiceConfigs(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 998
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 999
    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPreferentialNetworkServiceConfigs:Ljava/util/List;

    goto/16 :goto_0

    .line 1001
    :cond_50
    const-string/jumbo v2, "mte-policy"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 1002
    invoke-interface {p1, v7, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mtePolicy:I

    goto/16 :goto_0

    .line 1003
    :cond_51
    const-string v2, "caller-id-policy"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_52

    .line 1004
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/ActiveAdmin;->readPackagePolicy(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/admin/PackagePolicy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mManagedProfileCallerIdAccess:Landroid/app/admin/PackagePolicy;

    goto/16 :goto_0

    .line 1005
    :cond_52
    const-string v2, "contacts-policy"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 1006
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/ActiveAdmin;->readPackagePolicy(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/admin/PackagePolicy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mManagedProfileContactsAccess:Landroid/app/admin/PackagePolicy;

    goto/16 :goto_0

    .line 1007
    :cond_53
    const-string/jumbo v2, "managed_subscriptions_policy"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 1008
    invoke-static {p1}, Landroid/app/admin/ManagedSubscriptionsPolicy;->readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/admin/ManagedSubscriptionsPolicy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mManagedSubscriptionsPolicy:Landroid/app/admin/ManagedSubscriptionsPolicy;

    goto/16 :goto_0

    .line 1009
    :cond_54
    const-string v2, "credential-manager-policy"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 1010
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/ActiveAdmin;->readPackagePolicy(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/admin/PackagePolicy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mCredentialManagerPolicy:Landroid/app/admin/PackagePolicy;

    goto/16 :goto_0

    .line 1011
    :cond_55
    const-string v2, "dialer_package"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_56

    .line 1012
    invoke-interface {p1, v7, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mDialerPackage:Ljava/lang/String;

    goto/16 :goto_0

    .line 1013
    :cond_56
    const-string/jumbo v2, "sms_package"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 1014
    invoke-interface {p1, v7, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mSmsPackage:Ljava/lang/String;

    goto/16 :goto_0

    .line 1015
    :cond_57
    const-string/jumbo v2, "provisioning-context"

    .line 1016
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 1017
    invoke-interface {p1, v7, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mProvisioningContext:Ljava/lang/String;

    goto/16 :goto_0

    .line 1019
    :cond_58
    const-string v2, "Unknown admin tag: %s"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v5, v2, v1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1020
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    :cond_59
    return-void
.end method

.method public final readPackageList(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Ljava/util/List;
    .locals 5

    .line 1045
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1046
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v0

    .line 1048
    :cond_0
    :goto_0
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 1049
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_5

    :cond_1
    if-eq v1, v2, :cond_0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    goto :goto_0

    .line 1053
    :cond_2
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1054
    const-string/jumbo v2, "item"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "DevicePolicyManager"

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    .line 1055
    const-string/jumbo v4, "value"

    invoke-interface {p1, v2, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1057
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1059
    :cond_3
    const-string v2, "Package name missing under %s"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v2, v1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1062
    :cond_4
    const-string v2, "Unknown tag under %s: "

    filled-new-array {p2, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v2, v1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    return-object p0
.end method

.method public final readPackagePolicy(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/admin/PackagePolicy;
    .locals 3

    const/4 v0, 0x0

    .line 1027
    const-string/jumbo v1, "package-policy-type"

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1028
    new-instance v1, Landroid/util/ArraySet;

    const-string/jumbo v2, "package-policy-packages"

    .line 1029
    invoke-virtual {p0, p1, v2}, Lcom/android/server/devicepolicy/ActiveAdmin;->readPackageList(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v1, p0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 1030
    new-instance p0, Landroid/app/admin/PackagePolicy;

    invoke-direct {p0, v0, v1}, Landroid/app/admin/PackagePolicy;-><init>(ILjava/util/Set;)V

    return-object p0
.end method

.method public final readWifiSsids(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Ljava/util/List;
    .locals 1

    .line 1035
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1036
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->readAttributeValues(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Ljava/util/Collection;)V

    .line 1037
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/server/devicepolicy/ActiveAdmin$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/android/server/devicepolicy/ActiveAdmin$$ExternalSyntheticLambda1;-><init>()V

    .line 1038
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 1039
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public setProvisioningContext(Ljava/lang/String;)V
    .locals 2

    .line 396
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 397
    invoke-virtual {p1}, Ljava/lang/String;->isBlank()Z

    move-result v0

    if-nez v0, :cond_1

    .line 398
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    .line 399
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mProvisioningContext:Ljava/lang/String;

    return-void

    .line 402
    :cond_0
    iput-object p1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mProvisioningContext:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public final ssidsToStrings(Ljava/util/Set;)Ljava/util/List;
    .locals 0

    .line 718
    invoke-interface {p1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/server/devicepolicy/ActiveAdmin$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/android/server/devicepolicy/ActiveAdmin$$ExternalSyntheticLambda0;-><init>()V

    .line 719
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 720
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public transfer(Landroid/app/admin/DeviceAdminInfo;)V
    .locals 1

    .line 1167
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/ActiveAdmin;->hasParentActiveAdmin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1168
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->parentAdmin:Lcom/android/server/devicepolicy/ActiveAdmin;

    iput-object p1, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    .line 1170
    :cond_0
    iput-object p1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    return-void
.end method

.method public writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;I)V
    .locals 1

    const/4 p0, 0x0

    .line 747
    invoke-interface {p1, p0, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 748
    const-string/jumbo v0, "value"

    invoke-interface {p1, p0, v0, p3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 749
    invoke-interface {p1, p0, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;J)V
    .locals 1

    const/4 p0, 0x0

    .line 754
    invoke-interface {p1, p0, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 755
    const-string/jumbo v0, "value"

    invoke-interface {p1, p0, v0, p3, p4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 756
    invoke-interface {p1, p0, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 p0, 0x0

    .line 740
    invoke-interface {p1, p0, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 741
    const-string/jumbo v0, "value"

    invoke-interface {p1, p0, v0, p3}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 742
    invoke-interface {p1, p0, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V
    .locals 1

    const/4 p0, 0x0

    .line 761
    invoke-interface {p1, p0, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 762
    const-string/jumbo v0, "value"

    invoke-interface {p1, p0, v0, p3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 763
    invoke-interface {p1, p0, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public writeAttributeValuesToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V
    .locals 2

    const/4 p0, 0x0

    .line 768
    invoke-interface {p1, p0, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 769
    invoke-interface {p4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 770
    invoke-interface {p1, p0, p3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 771
    const-string/jumbo v1, "value"

    invoke-interface {p1, p0, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 772
    invoke-interface {p1, p0, p3}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 774
    :cond_0
    invoke-interface {p1, p0, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public writePackageListToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/util/List;)V
    .locals 1

    if-nez p3, :cond_0

    return-void

    .line 735
    :cond_0
    const-string/jumbo v0, "item"

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValuesToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    return-void
.end method

.method public final writePackagePolicy(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Landroid/app/admin/PackagePolicy;)V
    .locals 3

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 710
    invoke-interface {p1, v0, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 711
    const-string/jumbo v1, "package-policy-type"

    invoke-virtual {p3}, Landroid/app/admin/PackagePolicy;->getPolicyType()I

    move-result v2

    invoke-interface {p1, v0, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 712
    new-instance v1, Ljava/util/ArrayList;

    .line 713
    invoke-virtual {p3}, Landroid/app/admin/PackagePolicy;->getPackageNames()Ljava/util/Set;

    move-result-object p3

    invoke-direct {v1, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 712
    const-string/jumbo p3, "package-policy-packages"

    invoke-virtual {p0, p1, p3, v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->writePackageListToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/util/List;)V

    .line 714
    invoke-interface {p1, v0, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public writeTextToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const/4 p0, 0x0

    .line 724
    invoke-interface {p1, p0, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 725
    invoke-interface {p1, p3}, Lcom/android/modules/utils/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 726
    invoke-interface {p1, p0, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public writeToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 13

    .line 409
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 410
    const-string/jumbo v0, "policies"

    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 411
    iget-object v2, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v2, p1}, Landroid/app/admin/DeviceAdminInfo;->writePoliciesToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 412
    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v0, v0, Landroid/app/admin/PasswordPolicy;->quality:I

    const/4 v2, 0x1

    if-eqz v0, :cond_7

    .line 415
    const-string/jumbo v3, "password-quality"

    invoke-virtual {p0, p1, v3, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;I)V

    .line 417
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v0, v0, Landroid/app/admin/PasswordPolicy;->length:I

    if-eqz v0, :cond_1

    .line 418
    const-string/jumbo v3, "min-password-length"

    invoke-virtual {p0, p1, v3, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;I)V

    .line 421
    :cond_1
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v0, v0, Landroid/app/admin/PasswordPolicy;->upperCase:I

    if-eqz v0, :cond_2

    .line 422
    const-string/jumbo v3, "min-password-uppercase"

    invoke-virtual {p0, p1, v3, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;I)V

    .line 425
    :cond_2
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v0, v0, Landroid/app/admin/PasswordPolicy;->lowerCase:I

    if-eqz v0, :cond_3

    .line 426
    const-string/jumbo v3, "min-password-lowercase"

    invoke-virtual {p0, p1, v3, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;I)V

    .line 429
    :cond_3
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v0, v0, Landroid/app/admin/PasswordPolicy;->letters:I

    if-eq v0, v2, :cond_4

    .line 430
    const-string/jumbo v3, "min-password-letters"

    invoke-virtual {p0, p1, v3, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;I)V

    .line 433
    :cond_4
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v0, v0, Landroid/app/admin/PasswordPolicy;->numeric:I

    if-eq v0, v2, :cond_5

    .line 434
    const-string/jumbo v3, "min-password-numeric"

    invoke-virtual {p0, p1, v3, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;I)V

    .line 437
    :cond_5
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v0, v0, Landroid/app/admin/PasswordPolicy;->symbols:I

    if-eq v0, v2, :cond_6

    .line 438
    const-string/jumbo v3, "min-password-symbols"

    invoke-virtual {p0, p1, v3, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;I)V

    .line 441
    :cond_6
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    iget v0, v0, Landroid/app/admin/PasswordPolicy;->nonLetter:I

    if-lez v0, :cond_7

    .line 442
    const-string/jumbo v3, "min-password-nonletter"

    invoke-virtual {p0, p1, v3, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;I)V

    .line 446
    :cond_7
    iget v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->passwordHistoryLength:I

    if-eqz v0, :cond_8

    .line 447
    const-string/jumbo v3, "password-history-length"

    invoke-virtual {p0, p1, v3, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;I)V

    .line 450
    :cond_8
    iget-wide v3, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->maximumTimeToUnlock:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_9

    .line 451
    const-string/jumbo v0, "max-time-to-unlock"

    invoke-virtual {p0, p1, v0, v3, v4}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;J)V

    .line 454
    :cond_9
    iget-wide v3, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->strongAuthUnlockTimeout:J

    const-wide/32 v7, 0xf731400

    cmp-long v0, v3, v7

    if-eqz v0, :cond_a

    .line 455
    const-string/jumbo v0, "strong-auth-unlock-timeout"

    invoke-virtual {p0, p1, v0, v3, v4}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;J)V

    .line 458
    :cond_a
    iget v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->maximumFailedPasswordsForWipe:I

    if-eqz v0, :cond_b

    .line 459
    const-string/jumbo v3, "max-failed-password-wipe"

    invoke-virtual {p0, p1, v3, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;I)V

    .line 462
    :cond_b
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->specifiesGlobalProxy:Z

    if-eqz v0, :cond_d

    .line 463
    const-string/jumbo v3, "specifies-global-proxy"

    invoke-virtual {p0, p1, v3, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 465
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->globalProxySpec:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 466
    const-string v3, "global-proxy-spec"

    invoke-virtual {p0, p1, v3, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    :cond_c
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->globalProxyExclusionList:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 469
    const-string v3, "global-proxy-exclusion-list"

    invoke-virtual {p0, p1, v3, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    :cond_d
    iget-wide v3, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->passwordExpirationTimeout:J

    cmp-long v0, v3, v5

    if-eqz v0, :cond_e

    .line 474
    const-string/jumbo v0, "password-expiration-timeout"

    invoke-virtual {p0, p1, v0, v3, v4}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;J)V

    .line 477
    :cond_e
    iget-wide v3, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->passwordExpirationDate:J

    cmp-long v0, v3, v5

    if-eqz v0, :cond_f

    .line 478
    const-string/jumbo v0, "password-expiration-date"

    invoke-virtual {p0, p1, v0, v3, v4}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;J)V

    .line 481
    :cond_f
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->encryptionRequested:Z

    if-eqz v0, :cond_10

    .line 482
    const-string v3, "encryption-requested"

    invoke-virtual {p0, p1, v3, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 485
    :cond_10
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->testOnlyAdmin:Z

    if-eqz v0, :cond_11

    .line 486
    const-string/jumbo v3, "test-only-admin"

    invoke-virtual {p0, p1, v3, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 489
    :cond_11
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disableCamera:Z

    if-eqz v0, :cond_12

    .line 490
    const-string v3, "disable-camera"

    invoke-virtual {p0, p1, v3, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 493
    :cond_12
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disableCallerId:Z

    if-eqz v0, :cond_13

    .line 494
    const-string v3, "disable-caller-id"

    invoke-virtual {p0, p1, v3, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 497
    :cond_13
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disableContactsSearch:Z

    if-eqz v0, :cond_14

    .line 498
    const-string v3, "disable-contacts-search"

    invoke-virtual {p0, p1, v3, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 501
    :cond_14
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disableBluetoothContactSharing:Z

    if-nez v0, :cond_15

    .line 502
    const-string v3, "disable-bt-contacts-sharing"

    invoke-virtual {p0, p1, v3, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 505
    :cond_15
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disableScreenCapture:Z

    if-eqz v0, :cond_16

    .line 506
    const-string v3, "disable-screen-capture"

    invoke-virtual {p0, p1, v3, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 509
    :cond_16
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->requireAutoTime:Z

    if-eqz v0, :cond_17

    .line 510
    const-string/jumbo v3, "require_auto_time"

    invoke-virtual {p0, p1, v3, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 513
    :cond_17
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->forceEphemeralUsers:Z

    if-eqz v0, :cond_18

    .line 514
    const-string v3, "force_ephemeral_users"

    invoke-virtual {p0, p1, v3, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 517
    :cond_18
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->isNetworkLoggingEnabled:Z

    const-string/jumbo v3, "value"

    if-eqz v0, :cond_19

    .line 518
    const-string/jumbo v0, "is_network_logging_enabled"

    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 519
    iget-boolean v4, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->isNetworkLoggingEnabled:Z

    invoke-interface {p1, v1, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 520
    const-string/jumbo v4, "num-notifications"

    iget v7, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->numNetworkLoggingNotifications:I

    invoke-interface {p1, v1, v4, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 522
    const-string/jumbo v4, "last-notification"

    iget-wide v7, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->lastNetworkLoggingNotificationTimeMs:J

    invoke-interface {p1, v1, v4, v7, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 524
    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 526
    :cond_19
    iget v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->disabledKeyguardFeatures:I

    if-eqz v0, :cond_1a

    .line 527
    const-string v4, "disable-keyguard-features"

    invoke-virtual {p0, p1, v4, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;I)V

    .line 530
    :cond_1a
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->accountTypesWithManagementDisabled:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 531
    const-string v0, "account-type"

    iget-object v4, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->accountTypesWithManagementDisabled:Ljava/util/Set;

    const-string v7, "disable-account-management"

    invoke-virtual {p0, p1, v7, v0, v4}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValuesToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    .line 535
    :cond_1b
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->trustAgentInfos:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 536
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->trustAgentInfos:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 537
    const-string/jumbo v4, "manage-trust-agent-features"

    invoke-interface {p1, v1, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 538
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 539
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/devicepolicy/ActiveAdmin$TrustAgentInfo;

    .line 540
    const-string v9, "component"

    invoke-interface {p1, v1, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 541
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {p1, v1, v3, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 542
    iget-object v7, v8, Lcom/android/server/devicepolicy/ActiveAdmin$TrustAgentInfo;->options:Landroid/os/PersistableBundle;

    if-eqz v7, :cond_1c

    .line 543
    const-string/jumbo v7, "trust-agent-component-options"

    invoke-interface {p1, v1, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 545
    :try_start_0
    iget-object v8, v8, Lcom/android/server/devicepolicy/ActiveAdmin$TrustAgentInfo;->options:Landroid/os/PersistableBundle;

    invoke-virtual {v8, p1}, Landroid/os/PersistableBundle;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v8

    const/4 v10, 0x0

    .line 547
    new-array v10, v10, [Ljava/lang/Object;

    const-string v11, "DevicePolicyManager"

    const-string v12, "Failed to save TrustAgent options"

    invoke-static {v11, v8, v12, v10}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 549
    :goto_1
    invoke-interface {p1, v1, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 551
    :cond_1c
    invoke-interface {p1, v1, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 553
    :cond_1d
    invoke-interface {p1, v1, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 555
    :cond_1e
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    if-eqz v0, :cond_1f

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 556
    const-string/jumbo v0, "provider"

    iget-object v4, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    const-string v7, "cross-profile-widget-providers"

    invoke-virtual {p0, p1, v7, v0, v4}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValuesToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    .line 560
    :cond_1f
    const-string/jumbo v0, "permitted-accessiblity-services"

    iget-object v4, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->permittedAccessiblityServices:Ljava/util/List;

    invoke-virtual {p0, p1, v0, v4}, Lcom/android/server/devicepolicy/ActiveAdmin;->writePackageListToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/util/List;)V

    .line 562
    const-string/jumbo v0, "permitted-imes"

    iget-object v4, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->permittedInputMethods:Ljava/util/List;

    invoke-virtual {p0, p1, v0, v4}, Lcom/android/server/devicepolicy/ActiveAdmin;->writePackageListToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/util/List;)V

    .line 563
    const-string/jumbo v0, "permitted-notification-listeners"

    iget-object v4, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->permittedNotificationListeners:Ljava/util/List;

    invoke-virtual {p0, p1, v0, v4}, Lcom/android/server/devicepolicy/ActiveAdmin;->writePackageListToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/util/List;)V

    .line 565
    const-string/jumbo v0, "keep-uninstalled-packages"

    iget-object v4, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->keepUninstalledPackages:Ljava/util/List;

    invoke-virtual {p0, p1, v0, v4}, Lcom/android/server/devicepolicy/ActiveAdmin;->writePackageListToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/util/List;)V

    .line 566
    const-string/jumbo v0, "metered_data_disabled_packages"

    iget-object v4, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->meteredDisabledPackages:Ljava/util/List;

    invoke-virtual {p0, p1, v0, v4}, Lcom/android/server/devicepolicy/ActiveAdmin;->writePackageListToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/util/List;)V

    .line 567
    const-string/jumbo v0, "protected_packages"

    iget-object v4, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->protectedPackages:Ljava/util/List;

    invoke-virtual {p0, p1, v0, v4}, Lcom/android/server/devicepolicy/ActiveAdmin;->writePackageListToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/util/List;)V

    .line 568
    const-string/jumbo v0, "suspended-packages"

    iget-object v4, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->suspendedPackages:Ljava/util/List;

    invoke-virtual {p0, p1, v0, v4}, Lcom/android/server/devicepolicy/ActiveAdmin;->writePackageListToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/util/List;)V

    .line 569
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/ActiveAdmin;->hasUserRestrictions()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 570
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->userRestrictions:Landroid/os/Bundle;

    const-string/jumbo v4, "user-restrictions"

    invoke-static {p1, v0, v4}, Lcom/android/server/pm/UserRestrictionsUtils;->writeRestrictions(Lcom/android/modules/utils/TypedXmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 573
    :cond_20
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->defaultEnabledRestrictionsAlreadySet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_21

    .line 574
    const-string/jumbo v0, "restriction"

    iget-object v4, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->defaultEnabledRestrictionsAlreadySet:Ljava/util/Set;

    const-string v7, "default-enabled-user-restrictions"

    invoke-virtual {p0, p1, v7, v0, v4}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValuesToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    .line 578
    :cond_21
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->shortSupportMessage:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 579
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->shortSupportMessage:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "short-support-message"

    invoke-virtual {p0, p1, v4, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeTextToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    :cond_22
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->longSupportMessage:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 582
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->longSupportMessage:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "long-support-message"

    invoke-virtual {p0, p1, v4, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeTextToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    :cond_23
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->parentAdmin:Lcom/android/server/devicepolicy/ActiveAdmin;

    if-eqz v0, :cond_24

    .line 585
    const-string/jumbo v0, "parent-admin"

    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 586
    iget-object v4, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->parentAdmin:Lcom/android/server/devicepolicy/ActiveAdmin;

    invoke-virtual {v4, p1}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 587
    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 589
    :cond_24
    iget v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->organizationColor:I

    sget v4, Lcom/android/server/devicepolicy/ActiveAdmin;->DEF_ORGANIZATION_COLOR:I

    if-eq v0, v4, :cond_25

    .line 590
    const-string/jumbo v4, "organization-color"

    invoke-virtual {p0, p1, v4, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;I)V

    .line 592
    :cond_25
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->organizationName:Ljava/lang/String;

    if-eqz v0, :cond_26

    .line 593
    const-string/jumbo v4, "organization-name"

    invoke-virtual {p0, p1, v4, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeTextToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    :cond_26
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->isLogoutEnabled:Z

    if-eqz v0, :cond_27

    .line 596
    const-string/jumbo v4, "is_logout_enabled"

    invoke-virtual {p0, p1, v4, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 598
    :cond_27
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->startUserSessionMessage:Ljava/lang/String;

    if-eqz v0, :cond_28

    .line 599
    const-string/jumbo v4, "start_user_session_message"

    invoke-virtual {p0, p1, v4, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeTextToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    :cond_28
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->endUserSessionMessage:Ljava/lang/String;

    if-eqz v0, :cond_29

    .line 602
    const-string v4, "end_user_session_message"

    invoke-virtual {p0, p1, v4, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeTextToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    :cond_29
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mCrossProfileCalendarPackages:Ljava/util/List;

    if-nez v0, :cond_2a

    .line 605
    const-string v0, "cross-profile-calendar-packages-null"

    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 606
    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_2

    .line 608
    :cond_2a
    const-string v4, "cross-profile-calendar-packages"

    invoke-virtual {p0, p1, v4, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writePackageListToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/util/List;)V

    .line 611
    :goto_2
    const-string v0, "cross-profile-packages"

    iget-object v4, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mCrossProfilePackages:Ljava/util/List;

    invoke-virtual {p0, p1, v0, v4}, Lcom/android/server/devicepolicy/ActiveAdmin;->writePackageListToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/util/List;)V

    .line 612
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mFactoryResetProtectionPolicy:Landroid/app/admin/FactoryResetProtectionPolicy;

    if-eqz v0, :cond_2b

    .line 613
    const-string v0, "factory_reset_protection_policy"

    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 614
    iget-object v4, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mFactoryResetProtectionPolicy:Landroid/app/admin/FactoryResetProtectionPolicy;

    invoke-virtual {v4, p1}, Landroid/app/admin/FactoryResetProtectionPolicy;->writeToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 615
    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 617
    :cond_2b
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mSuspendPersonalApps:Z

    if-eqz v0, :cond_2c

    .line 618
    const-string/jumbo v4, "suspend-personal-apps"

    invoke-virtual {p0, p1, v4, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 620
    :cond_2c
    iget-wide v7, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mProfileMaximumTimeOffMillis:J

    cmp-long v0, v7, v5

    if-eqz v0, :cond_2d

    .line 621
    const-string/jumbo v0, "profile-max-time-off"

    invoke-virtual {p0, p1, v0, v7, v8}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;J)V

    .line 624
    :cond_2d
    iget-wide v7, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mProfileMaximumTimeOffMillis:J

    cmp-long v0, v7, v5

    if-eqz v0, :cond_2e

    .line 625
    const-string/jumbo v0, "profile-off-deadline"

    iget-wide v4, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mProfileOffDeadline:J

    invoke-virtual {p0, p1, v0, v4, v5}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;J)V

    .line 627
    :cond_2e
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mAlwaysOnVpnPackage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 628
    const-string/jumbo v0, "vpn-package"

    iget-object v4, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mAlwaysOnVpnPackage:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v4}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    :cond_2f
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mAlwaysOnVpnLockdown:Z

    if-eqz v0, :cond_30

    .line 631
    const-string/jumbo v4, "vpn-lockdown"

    invoke-virtual {p0, p1, v4, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 633
    :cond_30
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mCommonCriteriaMode:Z

    if-eqz v0, :cond_31

    .line 634
    const-string v4, "common-criteria-mode"

    invoke-virtual {p0, p1, v4, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 637
    :cond_31
    iget v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordComplexity:I

    if-eqz v0, :cond_32

    .line 638
    const-string/jumbo v4, "password-complexity"

    invoke-virtual {p0, p1, v4, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;I)V

    .line 640
    :cond_32
    iget v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mNearbyNotificationStreamingPolicy:I

    const/4 v4, 0x3

    if-eq v0, v4, :cond_33

    .line 641
    const-string/jumbo v5, "nearby-notification-streaming-policy"

    invoke-virtual {p0, p1, v5, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;I)V

    .line 644
    :cond_33
    iget v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mNearbyAppStreamingPolicy:I

    if-eq v0, v4, :cond_34

    .line 645
    const-string/jumbo v4, "nearby-app-streaming-policy"

    invoke-virtual {p0, p1, v4, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;I)V

    .line 648
    :cond_34
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mOrganizationId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 649
    const-string/jumbo v0, "organization-id"

    iget-object v4, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mOrganizationId:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v4}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeTextToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    :cond_35
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mEnrollmentSpecificId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 652
    const-string v0, "enrollment-specific-id"

    iget-object v4, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mEnrollmentSpecificId:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v4}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeTextToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    :cond_36
    const-string v0, "admin-can-grant-sensors-permissions"

    iget-boolean v4, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mAdminCanGrantSensorsPermissions:Z

    invoke-virtual {p0, p1, v0, v4}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 656
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mUsbDataSignalingEnabled:Z

    if-eq v0, v2, :cond_37

    .line 657
    const-string/jumbo v4, "usb-data-signaling"

    invoke-virtual {p0, p1, v4, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 659
    :cond_37
    iget v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mWifiMinimumSecurityLevel:I

    if-eqz v0, :cond_38

    .line 660
    const-string/jumbo v4, "wifi-min-security"

    invoke-virtual {p0, p1, v4, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;I)V

    .line 662
    :cond_38
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mWifiSsidPolicy:Landroid/app/admin/WifiSsidPolicy;

    if-eqz v0, :cond_3a

    .line 663
    invoke-virtual {v0}, Landroid/app/admin/WifiSsidPolicy;->getSsids()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->ssidsToStrings(Ljava/util/Set;)Ljava/util/List;

    move-result-object v0

    .line 664
    iget-object v4, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mWifiSsidPolicy:Landroid/app/admin/WifiSsidPolicy;

    invoke-virtual {v4}, Landroid/app/admin/WifiSsidPolicy;->getPolicyType()I

    move-result v4

    const-string/jumbo v5, "ssid"

    if-nez v4, :cond_39

    .line 665
    const-string/jumbo v2, "ssid-allowlist"

    invoke-virtual {p0, p1, v2, v5, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValuesToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    goto :goto_3

    .line 666
    :cond_39
    iget-object v4, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mWifiSsidPolicy:Landroid/app/admin/WifiSsidPolicy;

    invoke-virtual {v4}, Landroid/app/admin/WifiSsidPolicy;->getPolicyType()I

    move-result v4

    if-ne v4, v2, :cond_3a

    .line 667
    const-string/jumbo v2, "ssid-denylist"

    invoke-virtual {p0, p1, v2, v5, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValuesToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    .line 670
    :cond_3a
    :goto_3
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPreferentialNetworkServiceConfigs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3c

    .line 671
    const-string/jumbo v0, "preferential_network_service_configs"

    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 672
    iget-object v2, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mPreferentialNetworkServiceConfigs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/admin/PreferentialNetworkServiceConfig;

    .line 673
    invoke-virtual {v4, p1}, Landroid/app/admin/PreferentialNetworkServiceConfig;->writeToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    goto :goto_4

    .line 675
    :cond_3b
    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 677
    :cond_3c
    iget v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mtePolicy:I

    if-eqz v0, :cond_3d

    .line 678
    const-string/jumbo v2, "mte-policy"

    invoke-virtual {p0, p1, v2, v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;I)V

    .line 680
    :cond_3d
    const-string v0, "caller-id-policy"

    iget-object v2, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mManagedProfileCallerIdAccess:Landroid/app/admin/PackagePolicy;

    invoke-virtual {p0, p1, v0, v2}, Lcom/android/server/devicepolicy/ActiveAdmin;->writePackagePolicy(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Landroid/app/admin/PackagePolicy;)V

    .line 682
    const-string v0, "contacts-policy"

    iget-object v2, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mManagedProfileContactsAccess:Landroid/app/admin/PackagePolicy;

    invoke-virtual {p0, p1, v0, v2}, Lcom/android/server/devicepolicy/ActiveAdmin;->writePackagePolicy(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Landroid/app/admin/PackagePolicy;)V

    .line 684
    const-string v0, "credential-manager-policy"

    iget-object v2, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mCredentialManagerPolicy:Landroid/app/admin/PackagePolicy;

    invoke-virtual {p0, p1, v0, v2}, Lcom/android/server/devicepolicy/ActiveAdmin;->writePackagePolicy(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Landroid/app/admin/PackagePolicy;)V

    .line 686
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mManagedSubscriptionsPolicy:Landroid/app/admin/ManagedSubscriptionsPolicy;

    if-eqz v0, :cond_3e

    .line 687
    const-string/jumbo v0, "managed_subscriptions_policy"

    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 688
    iget-object v2, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mManagedSubscriptionsPolicy:Landroid/app/admin/ManagedSubscriptionsPolicy;

    invoke-virtual {v2, p1}, Landroid/app/admin/ManagedSubscriptionsPolicy;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 689
    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 691
    :cond_3e
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mDialerPackage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 692
    const-string v0, "dialer_package"

    iget-object v2, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mDialerPackage:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v2}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    :cond_3f
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mSmsPackage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_40

    .line 695
    const-string/jumbo v0, "sms_package"

    iget-object v2, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mSmsPackage:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v2}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    :cond_40
    iget-object v0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mProvisioningContext:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_41

    .line 699
    const-string/jumbo v0, "provisioning-context"

    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 700
    iget-object p0, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->mProvisioningContext:Ljava/lang/String;

    invoke-interface {p1, v1, v3, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 701
    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_41
    return-void
.end method
