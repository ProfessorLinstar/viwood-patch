.class public Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;
.super Lcom/android/server/SystemService;
.source "VoiceInteractionManagerService.java"


# instance fields
.field public final mAmInternal:Landroid/app/ActivityManagerInternal;

.field public final mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field public final mContext:Landroid/content/Context;

.field public mDbHelper:Lcom/android/server/voiceinteraction/IEnrolledModelDb;

.field public final mDpmInternal:Landroid/app/admin/DevicePolicyManagerInternal;

.field public final mLatencyLoggingListener:Lcom/android/internal/app/IVoiceInteractionSessionListener;

.field public final mLoadedKeyphraseIds:Landroid/util/ArrayMap;

.field public final mRealDbHelper:Lcom/android/server/voiceinteraction/IEnrolledModelDb;

.field public final mResolver:Landroid/content/ContentResolver;

.field public final mServiceStub:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

.field public mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

.field public mSoundTriggerInternal:Lcom/android/server/SoundTriggerInternal;

.field public final mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

.field public mVisualQueryRecognitionStatusListener:Lcom/android/internal/app/IVisualQueryRecognitionStatusListener;

.field public final mVoiceInteractionSessionListeners:Landroid/os/RemoteCallbackList;

.field public final mWmInternal:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmDbHelper(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;)Lcom/android/server/voiceinteraction/IEnrolledModelDb;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mDbHelper:Lcom/android/server/voiceinteraction/IEnrolledModelDb;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRealDbHelper(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;)Lcom/android/server/voiceinteraction/IEnrolledModelDb;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mRealDbHelper:Lcom/android/server/voiceinteraction/IEnrolledModelDb;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmServiceStub(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;)Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mServiceStub:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmVisualQueryRecognitionStatusListener(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;)Lcom/android/internal/app/IVisualQueryRecognitionStatusListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mVisualQueryRecognitionStatusListener:Lcom/android/internal/app/IVisualQueryRecognitionStatusListener;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmVoiceInteractionSessionListeners(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;)Landroid/os/RemoteCallbackList;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mVoiceInteractionSessionListeners:Landroid/os/RemoteCallbackList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmDbHelper(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;Lcom/android/server/voiceinteraction/IEnrolledModelDb;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mDbHelper:Lcom/android/server/voiceinteraction/IEnrolledModelDb;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmVisualQueryRecognitionStatusListener(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;Lcom/android/internal/app/IVisualQueryRecognitionStatusListener;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mVisualQueryRecognitionStatusListener:Lcom/android/internal/app/IVisualQueryRecognitionStatusListener;

    return-void
.end method

.method public static bridge synthetic -$$Nest$misUserSupported(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;Landroid/content/pm/UserInfo;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->isUserSupported(Landroid/content/pm/UserInfo;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 173
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 163
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mLoadedKeyphraseIds:Landroid/util/ArrayMap;

    .line 168
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mVoiceInteractionSessionListeners:Landroid/os/RemoteCallbackList;

    .line 2799
    new-instance v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$3;

    invoke-direct {v0, p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$3;-><init>(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;)V

    iput-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mLatencyLoggingListener:Lcom/android/internal/app/IVoiceInteractionSessionListener;

    .line 174
    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    .line 175
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mResolver:Landroid/content/ContentResolver;

    .line 176
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    .line 177
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    .line 176
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 178
    new-instance v0, Lcom/android/server/voiceinteraction/DatabaseHelper;

    invoke-direct {v0, p1}, Lcom/android/server/voiceinteraction/DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mRealDbHelper:Lcom/android/server/voiceinteraction/IEnrolledModelDb;

    iput-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mDbHelper:Lcom/android/server/voiceinteraction/IEnrolledModelDb;

    .line 179
    new-instance p1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    invoke-direct {p1, p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;-><init>(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;)V

    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mServiceStub:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    .line 180
    const-class p1, Landroid/app/ActivityManagerInternal;

    .line 181
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManagerInternal;

    .line 180
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 182
    const-class p1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 183
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 182
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 184
    const-class p1, Lcom/android/server/wm/WindowManagerInternal;

    .line 185
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/WindowManagerInternal;

    .line 184
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mWmInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 186
    const-class p1, Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManagerInternal;

    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mDpmInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    .line 187
    const-class p1, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;

    .line 189
    new-instance v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$1;-><init>(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;)V

    invoke-interface {p1, v0}, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;->setVoiceInteractionPackagesProvider(Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 0

    .line 136
    invoke-virtual {p0, p1, p2}, Lcom/android/server/SystemService;->dumpSupportedUsers(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final isUserSupported(Landroid/content/pm/UserInfo;)Z
    .locals 0

    .line 238
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isFull()Z

    move-result p0

    return p0
.end method

.method public isUserSupported(Lcom/android/server/SystemService$TargetUser;)Z
    .locals 0

    .line 234
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->isFull()Z

    move-result p0

    return p0
.end method

.method public onBootPhase(I)V
    .locals 1

    const/16 v0, 0x1f4

    if-ne v0, p1, :cond_0

    .line 222
    const-class p1, Landroid/content/pm/ShortcutServiceInternal;

    .line 223
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ShortcutServiceInternal;

    .line 222
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    .line 224
    const-class p1, Lcom/android/server/SoundTriggerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/SoundTriggerInternal;

    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mSoundTriggerInternal:Lcom/android/server/SoundTriggerInternal;

    return-void

    :cond_0
    const/16 v0, 0x258

    if-ne p1, v0, :cond_1

    .line 226
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mServiceStub:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->isSafeMode()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->systemRunning(Z)V

    return-void

    :cond_1
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_2

    .line 228
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mServiceStub:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mLatencyLoggingListener:Lcom/android/internal/app/IVoiceInteractionSessionListener;

    invoke-virtual {p1, p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->registerVoiceInteractionSessionListener(Lcom/android/internal/app/IVoiceInteractionSessionListener;)V

    :cond_2
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 205
    const-string/jumbo v0, "voiceinteraction"

    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mServiceStub:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 206
    const-class v0, Landroid/service/voice/VoiceInteractionManagerInternal;

    new-instance v1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$LocalService;

    invoke-direct {v1, p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$LocalService;-><init>(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 207
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    new-instance v1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$2;

    invoke-direct {v1, p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$2;-><init>(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;)V

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerInternal;->setVoiceInteractionManagerProvider(Landroid/app/ActivityManagerInternal$VoiceInteractionManagerProvider;)V

    return-void
.end method

.method public onUserStarting(Lcom/android/server/SystemService$TargetUser;)V
    .locals 0

    .line 245
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mServiceStub:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->initForUser(I)V

    return-void
.end method

.method public onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .locals 0

    .line 260
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mServiceStub:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    invoke-virtual {p2}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->switchUser(I)V

    return-void
.end method

.method public onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mServiceStub:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->initForUser(I)V

    .line 253
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mServiceStub:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->switchImplementationIfNeeded(Z)V

    return-void
.end method
