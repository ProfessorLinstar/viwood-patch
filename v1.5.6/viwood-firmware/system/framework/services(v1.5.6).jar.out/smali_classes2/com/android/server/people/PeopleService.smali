.class public Lcom/android/server/people/PeopleService;
.super Lcom/android/server/SystemService;
.source "PeopleService.java"


# instance fields
.field public mLazyConversationListenerHelper:Lcom/android/server/people/PeopleService$ConversationListenerHelper;

.field public mLazyDataManager:Lcom/android/server/people/data/DataManager;

.field public mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field final mService:Landroid/os/IBinder;


# direct methods
.method public static bridge synthetic -$$Nest$mcheckCallerIsSameApp(Lcom/android/server/people/PeopleService;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/people/PeopleService;->checkCallerIsSameApp(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetDataManager(Lcom/android/server/people/PeopleService;)Lcom/android/server/people/data/DataManager;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/people/PeopleService;->getDataManager()Lcom/android/server/people/data/DataManager;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mhandleIncomingUser(Lcom/android/server/people/PeopleService;I)I
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/people/PeopleService;->handleIncomingUser(I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smenforceSystemOrRoot(Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/people/PeopleService;->enforceSystemOrRoot(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smisSystemOrRoot()Z
    .locals 1

    .line 0
    invoke-static {}, Lcom/android/server/people/PeopleService;->isSystemOrRoot()Z

    move-result v0

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 194
    new-instance p1, Lcom/android/server/people/PeopleService$1;

    invoke-direct {p1, p0}, Lcom/android/server/people/PeopleService$1;-><init>(Lcom/android/server/people/PeopleService;)V

    iput-object p1, p0, Lcom/android/server/people/PeopleService;->mService:Landroid/os/IBinder;

    return-void
.end method

.method private checkCallerIsSameApp(Ljava/lang/String;)V
    .locals 4

    .line 171
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 172
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 174
    iget-object p0, p0, Lcom/android/server/people/PeopleService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v2, 0x0

    invoke-virtual {p0, p1, v2, v3, v1}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result p0

    if-ne p0, v0, :cond_0

    return-void

    .line 176
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " cannot query eventsfor package "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static enforceSystemOrRoot(Ljava/lang/String;)V
    .locals 3

    .line 150
    invoke-static {}, Lcom/android/server/people/PeopleService;->isSystemOrRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 151
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Only system may "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isSystemOrRoot()Z
    .locals 2

    .line 156
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    .line 157
    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v1

    if-nez v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public enforceSystemRootOrSystemUI(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 189
    invoke-static {}, Lcom/android/server/people/PeopleService;->isSystemOrRoot()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 190
    :cond_0
    const-string p0, "android.permission.STATUS_BAR_SERVICE"

    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getConversationListenerHelper()Lcom/android/server/people/PeopleService$ConversationListenerHelper;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/android/server/people/PeopleService;->mLazyConversationListenerHelper:Lcom/android/server/people/PeopleService$ConversationListenerHelper;

    if-nez v0, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/android/server/people/PeopleService;->initLazyStuff()V

    .line 88
    :cond_0
    iget-object p0, p0, Lcom/android/server/people/PeopleService;->mLazyConversationListenerHelper:Lcom/android/server/people/PeopleService$ConversationListenerHelper;

    return-object p0
.end method

.method public final getDataManager()Lcom/android/server/people/data/DataManager;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/android/server/people/PeopleService;->mLazyDataManager:Lcom/android/server/people/data/DataManager;

    if-nez v0, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/android/server/people/PeopleService;->initLazyStuff()V

    .line 104
    :cond_0
    iget-object p0, p0, Lcom/android/server/people/PeopleService;->mLazyDataManager:Lcom/android/server/people/data/DataManager;

    return-object p0
.end method

.method public final handleIncomingUser(I)I
    .locals 8

    .line 162
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 163
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const-string v6, ""
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move v3, p1

    .line 162
    :try_start_1
    invoke-interface/range {v0 .. v7}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return p0

    :catch_0
    move v3, p1

    :catch_1
    return v3
.end method

.method public final declared-synchronized initLazyStuff()V
    .locals 2

    monitor-enter p0

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/android/server/people/PeopleService;->mLazyDataManager:Lcom/android/server/people/data/DataManager;

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Lcom/android/server/people/data/DataManager;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/people/data/DataManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/people/PeopleService;->mLazyDataManager:Lcom/android/server/people/data/DataManager;

    .line 94
    invoke-virtual {v0}, Lcom/android/server/people/data/DataManager;->initialize()V

    .line 95
    new-instance v0, Lcom/android/server/people/PeopleService$ConversationListenerHelper;

    invoke-direct {v0}, Lcom/android/server/people/PeopleService$ConversationListenerHelper;-><init>()V

    iput-object v0, p0, Lcom/android/server/people/PeopleService;->mLazyConversationListenerHelper:Lcom/android/server/people/PeopleService$ConversationListenerHelper;

    .line 96
    iget-object v1, p0, Lcom/android/server/people/PeopleService;->mLazyDataManager:Lcom/android/server/people/data/DataManager;

    invoke-virtual {v1, v0}, Lcom/android/server/people/data/DataManager;->addConversationsListener(Lcom/android/server/people/PeopleService$ConversationsListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 98
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onBootPhase(I)V
    .locals 1

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/android/server/people/PeopleService;->getDataManager()Lcom/android/server/people/data/DataManager;

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    const/4 v0, 0x0

    .line 109
    invoke-virtual {p0, v0}, Lcom/android/server/people/PeopleService;->onStart(Z)V

    return-void
.end method

.method public onStart(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 115
    const-string/jumbo p1, "people"

    iget-object v0, p0, Lcom/android/server/people/PeopleService;->mService:Landroid/os/IBinder;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 117
    :cond_0
    const-class p1, Lcom/android/server/people/PeopleServiceInternal;

    new-instance v0, Lcom/android/server/people/PeopleService$LocalService;

    invoke-direct {v0, p0}, Lcom/android/server/people/PeopleService$LocalService;-><init>(Lcom/android/server/people/PeopleService;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 118
    const-class p1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageManagerInternal;

    iput-object p1, p0, Lcom/android/server/people/PeopleService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    return-void
.end method

.method public onUserStopping(Lcom/android/server/SystemService$TargetUser;)V
    .locals 0

    .line 140
    invoke-virtual {p0}, Lcom/android/server/people/PeopleService;->getDataManager()Lcom/android/server/people/data/DataManager;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/people/data/DataManager;->onUserStopping(I)V

    return-void
.end method

.method public onUserUnlocked(Lcom/android/server/SystemService$TargetUser;)V
    .locals 0

    .line 135
    invoke-virtual {p0}, Lcom/android/server/people/PeopleService;->getDataManager()Lcom/android/server/people/data/DataManager;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/people/data/DataManager;->onUserUnlocked(I)V

    return-void
.end method
