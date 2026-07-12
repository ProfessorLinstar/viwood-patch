.class public final Lcom/android/server/audio/AudioService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "AudioService.java"


# instance fields
.field public mService:Lcom/android/server/audio/AudioService;


# direct methods
.method public static synthetic $r8$lambda$6de2JXnKKk1CN0vVSo8fHCTAFzs(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .line 1254
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "audioserver_lifecycle"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 13

    .line 1252
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 1253
    new-instance v0, Lcom/android/server/audio/AudioService$Lifecycle$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/audio/AudioService$Lifecycle$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v12

    .line 1255
    new-instance v7, Lcom/android/server/audio/DefaultAudioPolicyFacade;

    invoke-direct {v7, v12}, Lcom/android/server/audio/DefaultAudioPolicyFacade;-><init>(Ljava/util/concurrent/Executor;)V

    .line 1256
    new-instance v1, Lcom/android/server/audio/AudioService;

    .line 1257
    invoke-static {}, Lcom/android/server/audio/AudioSystemAdapter;->getDefaultAdapter()Lcom/android/server/audio/AudioSystemAdapter;

    move-result-object v3

    .line 1258
    invoke-static {p1}, Lcom/android/server/audio/SystemServerAdapter;->getDefaultAdapter(Landroid/content/Context;)Lcom/android/server/audio/SystemServerAdapter;

    move-result-object v4

    .line 1259
    invoke-static {}, Lcom/android/server/audio/SettingsAdapter;->getDefaultAdapter()Lcom/android/server/audio/SettingsAdapter;

    move-result-object v5

    new-instance v6, Lcom/android/server/audio/AudioService$AudioVolumeGroupHelper;

    const/4 v0, 0x0

    invoke-direct {v6, v0}, Lcom/android/server/audio/AudioService$AudioVolumeGroupHelper;-><init>(Lcom/android/server/audio/AudioService-IA;)V

    const-class v0, Landroid/app/AppOpsManager;

    .line 1263
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/app/AppOpsManager;

    .line 1264
    invoke-static {p1}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v10

    .line 1266
    invoke-static {p1, v7, v12}, Lcom/android/server/audio/AudioService;->-$$Nest$sminitializeAudioServerPermissionProvider(Landroid/content/Context;Lcom/android/server/audio/AudioPolicyFacade;Ljava/util/concurrent/Executor;)Lcom/android/server/audio/AudioServerPermissionProvider;

    move-result-object v11

    const/4 v8, 0x0

    move-object v2, p1

    .line 1268
    invoke-direct/range {v1 .. v12}, Lcom/android/server/audio/AudioService;-><init>(Landroid/content/Context;Lcom/android/server/audio/AudioSystemAdapter;Lcom/android/server/audio/SystemServerAdapter;Lcom/android/server/audio/SettingsAdapter;Lcom/android/server/audio/AudioVolumeGroupHelperBase;Lcom/android/server/audio/AudioPolicyFacade;Landroid/os/Looper;Landroid/app/AppOpsManager;Landroid/os/PermissionEnforcer;Lcom/android/server/audio/AudioServerPermissionProvider;Ljava/util/concurrent/Executor;)V

    iput-object v1, p0, Lcom/android/server/audio/AudioService$Lifecycle;->mService:Lcom/android/server/audio/AudioService;

    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 1

    const/16 v0, 0x226

    if-ne p1, v0, :cond_0

    .line 1281
    iget-object p0, p0, Lcom/android/server/audio/AudioService$Lifecycle;->mService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->systemReady()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 1275
    const-string v0, "audio"

    iget-object v1, p0, Lcom/android/server/audio/AudioService$Lifecycle;->mService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method
