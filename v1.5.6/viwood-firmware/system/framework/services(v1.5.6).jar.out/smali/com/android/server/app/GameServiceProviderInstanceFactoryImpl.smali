.class public final Lcom/android/server/app/GameServiceProviderInstanceFactoryImpl;
.super Ljava/lang/Object;
.source "GameServiceProviderInstanceFactoryImpl.java"

# interfaces
.implements Lcom/android/server/app/GameServiceProviderInstanceFactory;


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/android/server/app/GameServiceProviderInstanceFactoryImpl;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public create(Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;)Lcom/android/server/app/GameServiceProviderInstance;
    .locals 14

    .line 53
    invoke-virtual {p1}, Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    .line 54
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v7

    .line 55
    new-instance v0, Lcom/android/server/app/GameServiceProviderInstanceImpl;

    .line 57
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/app/GameServiceProviderInstanceFactoryImpl;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/app/GameTaskInfoProvider;

    new-instance v5, Lcom/android/server/app/GameClassifierImpl;

    .line 60
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/server/app/GameClassifierImpl;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-direct {v4, v1, v7, v5}, Lcom/android/server/app/GameTaskInfoProvider;-><init>(Landroid/os/UserHandle;Landroid/app/IActivityTaskManager;Lcom/android/server/app/GameClassifier;)V

    .line 61
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v5

    const-class v6, Landroid/app/ActivityManagerInternal;

    .line 62
    invoke-static {v6}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManagerInternal;

    const-string/jumbo v8, "window"

    .line 64
    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/WindowManagerService;

    const-class v9, Lcom/android/server/wm/WindowManagerInternal;

    .line 65
    invoke-static {v9}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/WindowManagerInternal;

    const-class v10, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 66
    invoke-static {v10}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/ActivityTaskManagerInternal;

    new-instance v11, Lcom/android/server/app/GameServiceProviderInstanceFactoryImpl$GameServiceConnector;

    iget-object v12, p0, Lcom/android/server/app/GameServiceProviderInstanceFactoryImpl;->mContext:Landroid/content/Context;

    invoke-direct {v11, v12, p1}, Lcom/android/server/app/GameServiceProviderInstanceFactoryImpl$GameServiceConnector;-><init>(Landroid/content/Context;Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;)V

    new-instance v12, Lcom/android/server/app/GameServiceProviderInstanceFactoryImpl$GameSessionServiceConnector;

    iget-object v13, p0, Lcom/android/server/app/GameServiceProviderInstanceFactoryImpl;->mContext:Landroid/content/Context;

    invoke-direct {v12, v13, p1}, Lcom/android/server/app/GameServiceProviderInstanceFactoryImpl$GameSessionServiceConnector;-><init>(Landroid/content/Context;Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;)V

    new-instance v13, Lcom/android/internal/util/ScreenshotHelper;

    iget-object p0, p0, Lcom/android/server/app/GameServiceProviderInstanceFactoryImpl;->mContext:Landroid/content/Context;

    invoke-direct {v13, p0}, Lcom/android/internal/util/ScreenshotHelper;-><init>(Landroid/content/Context;)V

    invoke-direct/range {v0 .. v13}, Lcom/android/server/app/GameServiceProviderInstanceImpl;-><init>(Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Landroid/content/Context;Lcom/android/server/app/GameTaskInfoProvider;Landroid/app/IActivityManager;Landroid/app/ActivityManagerInternal;Landroid/app/IActivityTaskManager;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WindowManagerInternal;Lcom/android/server/wm/ActivityTaskManagerInternal;Lcom/android/internal/infra/ServiceConnector;Lcom/android/internal/infra/ServiceConnector;Lcom/android/internal/util/ScreenshotHelper;)V

    return-object v0
.end method
