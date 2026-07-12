.class public final Lcom/android/server/credentials/CredentialManagerService;
.super Lcom/android/server/infra/AbstractMasterSystemService;
.source "CredentialManagerService.java"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mRequestSessions:Landroid/util/SparseArray;

.field public final mSessionManager:Lcom/android/server/credentials/CredentialManagerService$SessionManager;

.field public final mSystemServicesCacheList:Landroid/util/SparseArray;


# direct methods
.method public static synthetic $r8$lambda$BiC7ap8XzY-FGZ5MVvp72o3GMlU(Lcom/android/server/credentials/CredentialManagerService;Lcom/android/server/credentials/RequestSession;Ljava/util/List;Ljava/util/List;Lcom/android/server/credentials/CredentialManagerServiceImpl;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/credentials/CredentialManagerService;->lambda$initiateProviderSessions$2(Lcom/android/server/credentials/RequestSession;Ljava/util/List;Ljava/util/List;Lcom/android/server/credentials/CredentialManagerServiceImpl;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LuPJXLsEy6odrKDM4_N9DyQ2xIs(Landroid/credentials/CredentialOption;)Ljava/util/HashSet;
    .locals 2

    .line 449
    new-instance v0, Ljava/util/HashSet;

    .line 450
    invoke-virtual {p0}, Landroid/credentials/CredentialOption;->getCredentialRetrievalData()Landroid/os/Bundle;

    move-result-object p0

    const-string v1, "android.credentials.GetCredentialOption.SUPPORTED_ELEMENT_KEYS"

    .line 451
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static synthetic $r8$lambda$dR0R1pqgx2zR0iStNh7rmXlMP1g(Lcom/android/server/credentials/CredentialManagerService;Ljava/util/List;ILandroid/credentials/CredentialProviderInfo;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/credentials/CredentialManagerService;->lambda$constructSystemServiceListLocked$0(Ljava/util/List;ILandroid/credentials/CredentialProviderInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mvYqYC1ADkjQ-w9QEXTJKgA-4ys(Landroid/credentials/CredentialOption;)Z
    .locals 1

    .line 1158
    invoke-virtual {p0}, Landroid/credentials/CredentialOption;->getAllowedProviders()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1159
    invoke-virtual {p0}, Landroid/credentials/CredentialOption;->getAllowedProviders()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/credentials/CredentialManagerService;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/credentials/CredentialManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRequestSessions(Lcom/android/server/credentials/CredentialManagerService;)Landroid/util/SparseArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/credentials/CredentialManagerService;->mRequestSessions:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSessionManager(Lcom/android/server/credentials/CredentialManagerService;)Lcom/android/server/credentials/CredentialManagerService$SessionManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/credentials/CredentialManagerService;->mSessionManager:Lcom/android/server/credentials/CredentialManagerService$SessionManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$maddSessionLocked(Lcom/android/server/credentials/CredentialManagerService;ILcom/android/server/credentials/RequestSession;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/credentials/CredentialManagerService;->addSessionLocked(ILcom/android/server/credentials/RequestSession;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mconstructCallingAppInfo(Lcom/android/server/credentials/CredentialManagerService;Ljava/lang/String;ILjava/lang/String;)Landroid/service/credentials/CallingAppInfo;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/credentials/CredentialManagerService;->constructCallingAppInfo(Ljava/lang/String;ILjava/lang/String;)Landroid/service/credentials/CallingAppInfo;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$menforceCallingPackage(Lcom/android/server/credentials/CredentialManagerService;Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/credentials/CredentialManagerService;->enforceCallingPackage(Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$menforcePermissionForAllowedProviders(Lcom/android/server/credentials/CredentialManagerService;Landroid/credentials/GetCredentialRequest;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/credentials/CredentialManagerService;->enforcePermissionForAllowedProviders(Landroid/credentials/GetCredentialRequest;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetFilteredResultFromRegistry(Lcom/android/server/credentials/CredentialManagerService;Ljava/util/List;)Ljava/util/Set;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/credentials/CredentialManagerService;->getFilteredResultFromRegistry(Ljava/util/List;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mhasWriteSecureSettingsPermission(Lcom/android/server/credentials/CredentialManagerService;)Z
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/credentials/CredentialManagerService;->hasWriteSecureSettingsPermission()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$minitiateProviderSessions(Lcom/android/server/credentials/CredentialManagerService;Lcom/android/server/credentials/RequestSession;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/credentials/CredentialManagerService;->initiateProviderSessions(Lcom/android/server/credentials/RequestSession;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$minitiateProviderSessionsWithActiveContainers(Lcom/android/server/credentials/CredentialManagerService;Lcom/android/server/credentials/GetRequestSession;Ljava/util/Set;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/credentials/CredentialManagerService;->initiateProviderSessionsWithActiveContainers(Lcom/android/server/credentials/GetRequestSession;Ljava/util/Set;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mvalidateGetCredentialRequest(Lcom/android/server/credentials/CredentialManagerService;Landroid/credentials/GetCredentialRequest;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/credentials/CredentialManagerService;->validateGetCredentialRequest(Landroid/credentials/GetCredentialRequest;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mverifyGetProvidersPermission(Lcom/android/server/credentials/CredentialManagerService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/credentials/CredentialManagerService;->verifyGetProvidersPermission()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 131
    new-instance v0, Lcom/android/server/infra/SecureSettingsServiceNameResolver;

    const-string v1, "credential_service"

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2}, Lcom/android/server/infra/SecureSettingsServiceNameResolver;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/android/server/infra/AbstractMasterSystemService;-><init>(Landroid/content/Context;Lcom/android/server/infra/ServiceNameResolver;Ljava/lang/String;I)V

    .line 119
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/credentials/CredentialManagerService;->mSystemServicesCacheList:Landroid/util/SparseArray;

    .line 124
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/credentials/CredentialManagerService;->mRequestSessions:Landroid/util/SparseArray;

    .line 128
    new-instance v0, Lcom/android/server/credentials/CredentialManagerService$SessionManager;

    invoke-direct {v0, p0, v2}, Lcom/android/server/credentials/CredentialManagerService$SessionManager;-><init>(Lcom/android/server/credentials/CredentialManagerService;Lcom/android/server/credentials/CredentialManagerService-IA;)V

    iput-object v0, p0, Lcom/android/server/credentials/CredentialManagerService;->mSessionManager:Lcom/android/server/credentials/CredentialManagerService$SessionManager;

    .line 137
    iput-object p1, p0, Lcom/android/server/credentials/CredentialManagerService;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/server/credentials/CredentialManagerService;)Ljava/lang/Object;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/server/credentials/CredentialManagerService;)Ljava/lang/Object;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/server/credentials/CredentialManagerService;)Ljava/lang/Object;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/server/credentials/CredentialManagerService;)Ljava/lang/Object;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/server/credentials/CredentialManagerService;)Ljava/lang/Object;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static clearAllCredentialProviders(Lcom/android/server/credentials/CredentialManagerService$SettingsWrapper;I)Z
    .locals 3

    .line 1289
    const-string v0, "credential_service_primary"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/android/server/credentials/CredentialManagerService$SettingsWrapper;->putStringForUser(Ljava/lang/String;Ljava/lang/String;IZ)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1296
    :cond_0
    const-string v0, "credential_service"

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/android/server/credentials/CredentialManagerService$SettingsWrapper;->putStringForUser(Ljava/lang/String;Ljava/lang/String;IZ)Z

    move-result p0

    return p0
.end method

.method public static getPrimaryProvidersForUserId(Landroid/content/Context;I)Ljava/util/Set;
    .locals 7

    .line 343
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string v5, "getPrimaryProvidersForUserId"

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v2, p1

    .line 342
    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 346
    new-instance v0, Lcom/android/server/infra/SecureSettingsServiceNameResolver;

    const-string v1, "credential_service_primary"

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/infra/SecureSettingsServiceNameResolver;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 349
    invoke-virtual {v0, p1}, Lcom/android/server/infra/SecureSettingsServiceNameResolver;->readServiceNameList(I)[Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    .line 351
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0

    .line 354
    :cond_0
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 355
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p0, v1

    .line 356
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    if-nez v3, :cond_1

    .line 358
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Primary provider component name unflatten from string error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CredentialManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 364
    :cond_1
    invoke-interface {p1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public static getStoredProvidersExceptPackage(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;
    .locals 5

    .line 1413
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto :goto_3

    .line 1417
    :cond_0
    const-string v1, ":"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v3, p0, v2

    .line 1418
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "null"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 1423
    :cond_1
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1424
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1425
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1419
    :cond_2
    :goto_1
    const-string v3, "CredentialManager"

    const-string/jumbo v4, "provider component name is empty or null"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_3
    return-object v0
.end method

.method public static getStoredProvidersExceptService(Ljava/lang/String;Landroid/content/ComponentName;)Ljava/util/Set;
    .locals 5

    .line 1389
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto :goto_3

    .line 1393
    :cond_0
    const-string v1, ":"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v3, p0, v2

    .line 1394
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "null"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 1399
    :cond_1
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1400
    invoke-virtual {v3, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1401
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1395
    :cond_2
    :goto_1
    const-string v3, "CredentialManager"

    const-string/jumbo v4, "provider component name is empty or null"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_3
    return-object v0
.end method

.method public static isAutofillProviderPresent(Lcom/android/server/credentials/CredentialManagerService$SettingsWrapper;I)Z
    .locals 1

    .line 1267
    const-string v0, "autofill_service"

    .line 1268
    invoke-virtual {p0, v0, p1}, Lcom/android/server/credentials/CredentialManagerService$SettingsWrapper;->getStringForUser(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1271
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1272
    invoke-static {p1, p0}, Lcom/android/server/credentials/CredentialManagerService;->isPlaceholderAutofillProvider(Ljava/lang/String;Lcom/android/server/credentials/CredentialManagerService$SettingsWrapper;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isCredentialDescriptionApiEnabled()Z
    .locals 5

    .line 382
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 384
    :try_start_0
    const-string v2, "credential_manager"

    const-string v3, "enable_credential_description_api"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 388
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 389
    throw v2
.end method

.method public static isPlaceholderAutofillProvider(Ljava/lang/String;Lcom/android/server/credentials/CredentialManagerService$SettingsWrapper;)Z
    .locals 1

    .line 1281
    invoke-static {p1}, Lcom/android/server/credentials/CredentialManagerService$SettingsWrapper;->-$$Nest$fgetmContext(Lcom/android/server/credentials/CredentialManagerService$SettingsWrapper;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x104023d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p0, :cond_0

    .line 1283
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static updateProvidersWhenPackageRemoved(Lcom/android/server/credentials/CredentialManagerService$SettingsWrapper;Ljava/lang/String;I)V
    .locals 8

    .line 1306
    const-string/jumbo v0, "updateProvidersWhenPackageRemoved"

    const-string v1, "CredentialManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    const-string v0, "credential_service_primary"

    invoke-virtual {p0, v0, p2}, Lcom/android/server/credentials/CredentialManagerService$SettingsWrapper;->getStringForUser(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 1312
    const-string v3, ":"

    const/4 v4, 0x1

    if-nez v2, :cond_0

    .line 1313
    const-string/jumbo v0, "settings key is null"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1317
    :cond_0
    invoke-static {v2, p1}, Lcom/android/server/credentials/CredentialManagerService;->getStoredProvidersExceptPackage(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    .line 1321
    invoke-static {v3, v2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    .line 1319
    invoke-virtual {p0, v0, v5, p2, v4}, Lcom/android/server/credentials/CredentialManagerService$SettingsWrapper;->putStringForUser(Ljava/lang/String;Ljava/lang/String;IZ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1324
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to remove primary package: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1330
    :cond_1
    const-string v0, "autofill_service"

    invoke-virtual {p0, v0, p2}, Lcom/android/server/credentials/CredentialManagerService$SettingsWrapper;->getStringForUser(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 1336
    invoke-static {p0}, Lcom/android/server/credentials/CredentialManagerService$SettingsWrapper;->-$$Nest$fgetmContext(Lcom/android/server/credentials/CredentialManagerService$SettingsWrapper;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x104023d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v5, :cond_2

    .line 1338
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1342
    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 1343
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1344
    const-string v5, ""

    invoke-virtual {p0, v0, v5, p2, v4}, Lcom/android/server/credentials/CredentialManagerService$SettingsWrapper;->putStringForUser(Ljava/lang/String;Ljava/lang/String;IZ)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to remove autofill package: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1358
    :cond_2
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p0, p2}, Lcom/android/server/credentials/CredentialManagerService;->isAutofillProviderPresent(Lcom/android/server/credentials/CredentialManagerService$SettingsWrapper;I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1359
    const-string v0, "Clearing all credential providers"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    invoke-static {p0, p2}, Lcom/android/server/credentials/CredentialManagerService;->clearAllCredentialProviders(Lcom/android/server/credentials/CredentialManagerService$SettingsWrapper;I)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 1363
    :cond_3
    const-string v0, "Failed to clear all credential providers"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1369
    :cond_4
    :goto_0
    const-string v0, "credential_service"

    invoke-virtual {p0, v0, p2}, Lcom/android/server/credentials/CredentialManagerService$SettingsWrapper;->getStringForUser(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 1373
    invoke-static {v2, p1}, Lcom/android/server/credentials/CredentialManagerService;->getStoredProvidersExceptPackage(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    .line 1377
    invoke-static {v3, v2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    .line 1375
    invoke-virtual {p0, v0, v2, p2, v4}, Lcom/android/server/credentials/CredentialManagerService$SettingsWrapper;->putStringForUser(Ljava/lang/String;Ljava/lang/String;IZ)Z

    move-result p0

    if-nez p0, :cond_5

    .line 1380
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to remove secondary package: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_1
    return-void
.end method

.method public static updateProvidersWhenServiceRemoved(Lcom/android/server/credentials/CredentialManagerService$SettingsWrapper;Landroid/content/ComponentName;I)V
    .locals 6

    .line 1209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateProvidersWhenServiceRemoved for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1210
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1209
    const-string v1, "CredentialManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    const-string v0, "credential_service_primary"

    invoke-virtual {p0, v0, p2}, Lcom/android/server/credentials/CredentialManagerService$SettingsWrapper;->getStringForUser(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 1216
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    const-string v5, ":"

    if-eqz v3, :cond_0

    .line 1217
    const-string/jumbo p2, "primary settings key is null"

    invoke-static {v1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1221
    :cond_0
    invoke-static {v2, p1}, Lcom/android/server/credentials/CredentialManagerService;->getStoredProvidersExceptService(Ljava/lang/String;Landroid/content/ComponentName;)Ljava/util/Set;

    move-result-object v2

    .line 1228
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1229
    invoke-static {p0, p2}, Lcom/android/server/credentials/CredentialManagerService;->isAutofillProviderPresent(Lcom/android/server/credentials/CredentialManagerService$SettingsWrapper;I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1230
    const-string v3, "Clearing all credential providers"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    invoke-static {p0, p2}, Lcom/android/server/credentials/CredentialManagerService;->clearAllCredentialProviders(Lcom/android/server/credentials/CredentialManagerService$SettingsWrapper;I)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_1

    .line 1234
    :cond_1
    const-string p2, "Failed to clear all credential providers"

    invoke-static {v1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    :cond_2
    invoke-static {v5, v2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p2

    .line 1241
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 1238
    invoke-virtual {p0, v0, p2, v2, v4}, Lcom/android/server/credentials/CredentialManagerService$SettingsWrapper;->putStringForUser(Ljava/lang/String;Ljava/lang/String;IZ)Z

    move-result p2

    if-nez p2, :cond_3

    .line 1243
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to remove primary service: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1251
    :cond_3
    :goto_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p2

    .line 1250
    const-string v0, "credential_service"

    invoke-virtual {p0, v0, p2}, Lcom/android/server/credentials/CredentialManagerService$SettingsWrapper;->getStringForUser(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 1254
    invoke-static {p2, p1}, Lcom/android/server/credentials/CredentialManagerService;->getStoredProvidersExceptService(Ljava/lang/String;Landroid/content/ComponentName;)Ljava/util/Set;

    move-result-object p2

    .line 1258
    invoke-static {v5, p2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p2

    .line 1259
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 1256
    invoke-virtual {p0, v0, p2, v2, v4}, Lcom/android/server/credentials/CredentialManagerService$SettingsWrapper;->putStringForUser(Ljava/lang/String;Ljava/lang/String;IZ)Z

    move-result p0

    if-nez p0, :cond_4

    .line 1261
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to remove secondary service: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public final addSessionLocked(ILcom/android/server/credentials/RequestSession;)V
    .locals 2

    .line 1168
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1169
    :try_start_0
    iget-object p0, p0, Lcom/android/server/credentials/CredentialManagerService;->mSessionManager:Lcom/android/server/credentials/CredentialManagerService$SessionManager;

    iget-object v1, p2, Lcom/android/server/credentials/RequestSession;->mRequestId:Landroid/os/IBinder;

    invoke-virtual {p0, p1, v1, p2}, Lcom/android/server/credentials/CredentialManagerService$SessionManager;->addSession(ILandroid/os/IBinder;Lcom/android/server/credentials/RequestSession;)V

    .line 1170
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final constructCallingAppInfo(Ljava/lang/String;ILjava/lang/String;)Landroid/service/credentials/CallingAppInfo;
    .locals 2

    .line 512
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 513
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-wide/32 v0, 0x8000000

    .line 516
    invoke-static {v0, v1}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v0

    .line 514
    invoke-virtual {p0, p1, v0, p2}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 519
    new-instance p2, Landroid/service/credentials/CallingAppInfo;

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    invoke-direct {p2, p1, p0, p3}, Landroid/service/credentials/CallingAppInfo;-><init>(Ljava/lang/String;Landroid/content/pm/SigningInfo;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p0

    .line 521
    const-string p2, "CredentialManager"

    const-string v0, "Issue while retrieving signatureInfo : "

    invoke-static {p2, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 522
    new-instance p0, Landroid/service/credentials/CallingAppInfo;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/service/credentials/CallingAppInfo;-><init>(Ljava/lang/String;Landroid/content/pm/SigningInfo;Ljava/lang/String;)V

    return-object p0
.end method

.method public final constructSystemServiceListLocked(I)Ljava/util/List;
    .locals 4

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 145
    iget-object v1, p0, Lcom/android/server/credentials/CredentialManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    const/4 v3, 0x0

    .line 146
    invoke-static {v1, p1, v3, v2}, Landroid/service/credentials/CredentialProviderInfoFactory;->getAvailableSystemServices(Landroid/content/Context;IZLjava/util/Set;)Ljava/util/List;

    move-result-object v1

    .line 151
    new-instance v2, Lcom/android/server/credentials/CredentialManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/server/credentials/CredentialManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/credentials/CredentialManagerService;Ljava/util/List;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public final enforceCallingPackage(Ljava/lang/String;I)V
    .locals 2

    .line 1175
    iget-object p0, p0, Lcom/android/server/credentials/CredentialManagerService;->mContext:Landroid/content/Context;

    .line 1176
    invoke-static {p2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v0

    const/4 v1, 0x0

    .line 1175
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p0

    .line 1176
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-wide/16 v0, 0x0

    .line 1179
    :try_start_0
    invoke-static {v0, v1}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v0

    .line 1178
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)I

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p0, p2, :cond_0

    return-void

    .line 1184
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not belong to uid "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1181
    :catch_0
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not found"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final enforcePermissionForAllowedProviders(Landroid/credentials/GetCredentialRequest;)V
    .locals 1

    .line 1156
    invoke-virtual {p1}, Landroid/credentials/GetCredentialRequest;->getCredentialOptions()Ljava/util/List;

    move-result-object p1

    .line 1157
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/server/credentials/CredentialManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/server/credentials/CredentialManagerService$$ExternalSyntheticLambda2;-><init>()V

    .line 1158
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1161
    iget-object p0, p0, Lcom/android/server/credentials/CredentialManagerService;->mContext:Landroid/content/Context;

    const-string p1, "android.permission.CREDENTIAL_MANAGER_SET_ALLOWED_PROVIDERS"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final getCredentialProviderServicesLocked(I)Ljava/util/List;
    .locals 3

    .line 371
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 373
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceListForUserLocked(I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 374
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 375
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 377
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/credentials/CredentialManagerService;->getOrConstructSystemServiceListLock(I)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public final getFilteredResultFromRegistry(Ljava/util/List;)Ljava/util/Set;
    .locals 7

    .line 442
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p0

    invoke-static {p0}, Lcom/android/server/credentials/CredentialDescriptionRegistry;->forUser(I)Lcom/android/server/credentials/CredentialDescriptionRegistry;

    move-result-object p0

    .line 446
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/credentials/CredentialManagerService$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/android/server/credentials/CredentialManagerService$$ExternalSyntheticLambda3;-><init>()V

    .line 447
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 453
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 457
    invoke-virtual {p0, v0}, Lcom/android/server/credentials/CredentialDescriptionRegistry;->getMatchingProviders(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    .line 459
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 462
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/credentials/CredentialDescriptionRegistry$FilterResult;

    .line 463
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/credentials/CredentialOption;

    .line 464
    new-instance v4, Ljava/util/HashSet;

    .line 466
    invoke-virtual {v3}, Landroid/credentials/CredentialOption;->getCredentialRetrievalData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "android.credentials.GetCredentialOption.SUPPORTED_ELEMENT_KEYS"

    .line 467
    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 468
    iget-object v5, v1, Lcom/android/server/credentials/CredentialDescriptionRegistry$FilterResult;->mElementKeys:Ljava/util/Set;

    invoke-static {v5, v4}, Lcom/android/server/credentials/CredentialDescriptionRegistry;->checkForMatch(Ljava/util/Set;Ljava/util/Set;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 470
    new-instance v4, Landroid/util/Pair;

    invoke-direct {v4, v3, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final getOrConstructSystemServiceListLock(I)Ljava/util/List;
    .locals 2

    .line 290
    iget-object v0, p0, Lcom/android/server/credentials/CredentialManagerService;->mSystemServicesCacheList:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 291
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    .line 292
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/credentials/CredentialManagerService;->constructSystemServiceListLocked(I)Ljava/util/List;

    move-result-object v0

    .line 293
    iget-object p0, p0, Lcom/android/server/credentials/CredentialManagerService;->mSystemServicesCacheList:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v0
.end method

.method public getServiceSettingsProperty()Ljava/lang/String;
    .locals 0

    .line 162
    const-string p0, "credential_service"

    return-object p0
.end method

.method public handlePackageRemovedMultiModeLocked(Ljava/lang/String;I)V
    .locals 4

    .line 209
    new-instance v0, Lcom/android/server/credentials/CredentialManagerService$SettingsWrapper;

    iget-object v1, p0, Lcom/android/server/credentials/CredentialManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/credentials/CredentialManagerService$SettingsWrapper;-><init>(Landroid/content/Context;)V

    invoke-static {v0, p1, p2}, Lcom/android/server/credentials/CredentialManagerService;->updateProvidersWhenPackageRemoved(Lcom/android/server/credentials/CredentialManagerService$SettingsWrapper;Ljava/lang/String;I)V

    .line 211
    invoke-virtual {p0, p2}, Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceListForUserLocked(I)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 216
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 217
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/credentials/CredentialManagerServiceImpl;

    if-eqz v2, :cond_1

    .line 219
    invoke-virtual {v2}, Lcom/android/server/credentials/CredentialManagerServiceImpl;->getCredentialProviderInfo()Landroid/credentials/CredentialProviderInfo;

    move-result-object v3

    .line 221
    invoke-virtual {v3}, Landroid/credentials/CredentialProviderInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    .line 222
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 223
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 230
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_3

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    check-cast v2, Lcom/android/server/credentials/CredentialManagerServiceImpl;

    .line 231
    invoke-virtual {p0, v2, p2}, Lcom/android/server/infra/AbstractMasterSystemService;->removeServiceFromCache(Lcom/android/server/infra/AbstractPerUserSystemService;I)V

    .line 232
    invoke-virtual {p0, v2, p2}, Lcom/android/server/credentials/CredentialManagerService;->removeServiceFromSystemServicesCache(Lcom/android/server/credentials/CredentialManagerServiceImpl;I)V

    .line 233
    invoke-static {p2}, Lcom/android/server/credentials/CredentialDescriptionRegistry;->forUser(I)Lcom/android/server/credentials/CredentialDescriptionRegistry;

    move-result-object v3

    .line 234
    invoke-virtual {v2}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServicePackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/android/server/credentials/CredentialDescriptionRegistry;->evictProviderWithPackageName(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method public handleServiceRemovedMultiModeLocked(Landroid/content/ComponentName;I)V
    .locals 4

    .line 242
    new-instance v0, Lcom/android/server/credentials/CredentialManagerService$SettingsWrapper;

    iget-object v1, p0, Lcom/android/server/credentials/CredentialManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/credentials/CredentialManagerService$SettingsWrapper;-><init>(Landroid/content/Context;)V

    invoke-static {v0, p1, p2}, Lcom/android/server/credentials/CredentialManagerService;->updateProvidersWhenServiceRemoved(Lcom/android/server/credentials/CredentialManagerService$SettingsWrapper;Landroid/content/ComponentName;I)V

    .line 244
    invoke-virtual {p0, p2}, Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceListForUserLocked(I)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 249
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 250
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/credentials/CredentialManagerServiceImpl;

    if-eqz v2, :cond_1

    .line 252
    invoke-virtual {v2}, Lcom/android/server/credentials/CredentialManagerServiceImpl;->getCredentialProviderInfo()Landroid/credentials/CredentialProviderInfo;

    move-result-object v3

    .line 254
    invoke-virtual {v3}, Landroid/credentials/CredentialProviderInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 255
    invoke-virtual {v3, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 256
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 261
    :cond_2
    invoke-virtual {p0, v1, p2}, Lcom/android/server/credentials/CredentialManagerService;->removeServicesLocked(Ljava/util/List;I)V

    return-void
.end method

.method public final hasPermission(Ljava/lang/String;)Z
    .locals 2

    .line 317
    iget-object p0, p0, Lcom/android/server/credentials/CredentialManagerService;->mContext:Landroid/content/Context;

    .line 318
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Caller does not have permission: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CredentialManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return p0
.end method

.method public final hasWriteSecureSettingsPermission()Z
    .locals 1

    .line 299
    const-string v0, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {p0, v0}, Lcom/android/server/credentials/CredentialManagerService;->hasPermission(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final initiateProviderSessions(Lcom/android/server/credentials/RequestSession;Ljava/util/List;)Ljava/util/List;
    .locals 2

    .line 481
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 483
    new-instance v1, Lcom/android/server/credentials/CredentialManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/android/server/credentials/CredentialManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/credentials/CredentialManagerService;Lcom/android/server/credentials/RequestSession;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {p0, v1}, Lcom/android/server/credentials/CredentialManagerService;->runForUser(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public final initiateProviderSessionsWithActiveContainers(Lcom/android/server/credentials/GetRequestSession;Ljava/util/Set;)Ljava/util/List;
    .locals 8

    .line 398
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 400
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 401
    iget-object v2, p0, Lcom/android/server/credentials/CredentialManagerService;->mContext:Landroid/content/Context;

    .line 403
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    iget-object v5, p1, Lcom/android/server/credentials/RequestSession;->mClientAppInfo:Landroid/service/credentials/CallingAppInfo;

    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/credentials/CredentialDescriptionRegistry$FilterResult;

    iget-object v6, v4, Lcom/android/server/credentials/CredentialDescriptionRegistry$FilterResult;->mPackageName:Ljava/lang/String;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v7, v1

    check-cast v7, Landroid/credentials/CredentialOption;

    move-object v4, p1

    .line 401
    invoke-static/range {v2 .. v7}, Lcom/android/server/credentials/ProviderRegistryGetSession;->createNewSession(Landroid/content/Context;ILcom/android/server/credentials/GetRequestSession;Landroid/service/credentials/CallingAppInfo;Ljava/lang/String;Landroid/credentials/CredentialOption;)Lcom/android/server/credentials/ProviderRegistryGetSession;

    move-result-object p1

    .line 408
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 409
    invoke-virtual {p1}, Lcom/android/server/credentials/ProviderSession;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v4, v1, p1}, Lcom/android/server/credentials/GetRequestSession;->addProviderSession(Landroid/content/ComponentName;Lcom/android/server/credentials/ProviderSession;)V

    move-object p1, v4

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final synthetic lambda$constructSystemServiceListLocked$0(Ljava/util/List;ILandroid/credentials/CredentialProviderInfo;)V
    .locals 2

    .line 153
    new-instance v0, Lcom/android/server/credentials/CredentialManagerServiceImpl;

    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    invoke-direct {v0, p0, v1, p2, p3}, Lcom/android/server/credentials/CredentialManagerServiceImpl;-><init>(Lcom/android/server/credentials/CredentialManagerService;Ljava/lang/Object;ILandroid/credentials/CredentialProviderInfo;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final synthetic lambda$initiateProviderSessions$2(Lcom/android/server/credentials/RequestSession;Ljava/util/List;Ljava/util/List;Lcom/android/server/credentials/CredentialManagerServiceImpl;)V
    .locals 0

    .line 485
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter p0

    .line 487
    :try_start_0
    invoke-virtual {p4, p1, p2}, Lcom/android/server/credentials/CredentialManagerServiceImpl;->initiateProviderSessionForRequestLocked(Lcom/android/server/credentials/RequestSession;Ljava/util/List;)Lcom/android/server/credentials/ProviderSession;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 490
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 492
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public newServiceListLocked(IZ[Ljava/lang/String;)Ljava/util/List;
    .locals 5

    .line 186
    invoke-virtual {p0, p1}, Lcom/android/server/credentials/CredentialManagerService;->getOrConstructSystemServiceListLock(I)Ljava/util/List;

    if-eqz p3, :cond_3

    .line 187
    array-length p2, p3

    if-nez p2, :cond_0

    goto :goto_2

    .line 190
    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    array-length v0, p3

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 191
    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p3, v1

    .line 192
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 196
    :cond_1
    :try_start_0
    new-instance v3, Lcom/android/server/credentials/CredentialManagerServiceImpl;

    iget-object v4, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    invoke-direct {v3, p0, v4, p1, v2}, Lcom/android/server/credentials/CredentialManagerServiceImpl;-><init>(Lcom/android/server/credentials/CredentialManagerService;Ljava/lang/Object;ILjava/lang/String;)V

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 199
    const-string v3, "CredentialManager"

    const-string v4, "Unable to add serviceInfo : "

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object p2

    .line 188
    :cond_3
    :goto_2
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public newServiceLocked(IZ)Lcom/android/server/credentials/CredentialManagerServiceImpl;
    .locals 0

    .line 170
    const-string p0, "CredentialManager"

    const-string p1, "Should not be here - CredentialManagerService is configured to use multiple services"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic newServiceLocked(IZ)Lcom/android/server/infra/AbstractPerUserSystemService;
    .locals 0

    .line 95
    invoke-virtual {p0, p1, p2}, Lcom/android/server/credentials/CredentialManagerService;->newServiceLocked(IZ)Lcom/android/server/credentials/CredentialManagerServiceImpl;

    move-result-object p0

    return-object p0
.end method

.method public onStart()V
    .locals 2

    .line 179
    new-instance v0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;

    invoke-direct {v0, p0}, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;-><init>(Lcom/android/server/credentials/CredentialManagerService;)V

    const-string v1, "credential"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public onUserStopped(Lcom/android/server/SystemService$TargetUser;)V
    .locals 0

    .line 500
    invoke-super {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->onUserStopped(Lcom/android/server/SystemService$TargetUser;)V

    .line 501
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p0

    invoke-static {p0}, Lcom/android/server/credentials/CredentialDescriptionRegistry;->clearUserSession(I)V

    return-void
.end method

.method public final removeServiceFromSystemServicesCache(Lcom/android/server/credentials/CredentialManagerServiceImpl;I)V
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/android/server/credentials/CredentialManagerService;->mSystemServicesCacheList:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 283
    iget-object p0, p0, Lcom/android/server/credentials/CredentialManagerService;->mSystemServicesCacheList:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final removeServicesLocked(Ljava/util/List;I)V
    .locals 2

    .line 271
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/credentials/CredentialManagerServiceImpl;

    .line 272
    invoke-virtual {p0, v0, p2}, Lcom/android/server/infra/AbstractMasterSystemService;->removeServiceFromCache(Lcom/android/server/infra/AbstractPerUserSystemService;I)V

    .line 273
    invoke-virtual {p0, v0, p2}, Lcom/android/server/credentials/CredentialManagerService;->removeServiceFromSystemServicesCache(Lcom/android/server/credentials/CredentialManagerServiceImpl;I)V

    .line 274
    invoke-static {p2}, Lcom/android/server/credentials/CredentialDescriptionRegistry;->forUser(I)Lcom/android/server/credentials/CredentialDescriptionRegistry;

    move-result-object v1

    .line 275
    invoke-virtual {v0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServicePackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/credentials/CredentialDescriptionRegistry;->evictProviderWithPackageName(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final runForUser(Ljava/util/function/Consumer;)V
    .locals 4

    .line 326
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 327
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 329
    :try_start_0
    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 331
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/android/server/credentials/CredentialManagerService;->getCredentialProviderServicesLocked(I)Ljava/util/List;

    move-result-object p0

    .line 332
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/credentials/CredentialManagerServiceImpl;

    .line 333
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 335
    :cond_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 337
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 335
    :goto_1
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    .line 337
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 338
    throw p0
.end method

.method public final validateGetCredentialRequest(Landroid/credentials/GetCredentialRequest;)V
    .locals 3

    .line 1148
    invoke-virtual {p1}, Landroid/credentials/GetCredentialRequest;->getOrigin()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1150
    iget-object v0, p0, Lcom/android/server/credentials/CredentialManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CREDENTIAL_MANAGER_SET_ORIGIN"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1152
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/credentials/CredentialManagerService;->enforcePermissionForAllowedProviders(Landroid/credentials/GetCredentialRequest;)V

    return-void
.end method

.method public final verifyGetProvidersPermission()V
    .locals 1

    .line 303
    const-string v0, "android.permission.QUERY_ALL_PACKAGES"

    invoke-virtual {p0, v0}, Lcom/android/server/credentials/CredentialManagerService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 307
    :cond_0
    const-string v0, "android.permission.LIST_ENABLED_CREDENTIAL_PROVIDERS"

    invoke-virtual {p0, v0}, Lcom/android/server/credentials/CredentialManagerService;->hasPermission(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :goto_0
    return-void

    .line 311
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Caller is missing permission: QUERY_ALL_PACKAGES or LIST_ENABLED_CREDENTIAL_PROVIDERS"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
