.class public Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService;
.super Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService$Stub;
.source "SoundTriggerMiddlewareService.java"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;

.field public final mInjection:Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;


# direct methods
.method public constructor <init>(Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;Landroid/content/Context;Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService$Stub;-><init>()V

    .line 83
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;

    .line 84
    iput-object p2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService;->mContext:Landroid/content/Context;

    .line 85
    iput-object p3, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService;->mInjection:Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;Landroid/content/Context;Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService;-><init>(Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;Landroid/content/Context;Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;)V

    return-void
.end method


# virtual methods
.method public attachAsMiddleman(ILandroid/media/permission/Identity;Landroid/media/permission/Identity;Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;Z)Landroid/media/soundtrigger_middleware/ISoundTriggerModule;
    .locals 0

    .line 116
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    invoke-virtual {p0, p2, p3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService;->establishIdentityIndirect(Landroid/media/permission/Identity;Landroid/media/permission/Identity;)Landroid/media/permission/SafeCloseable;

    move-result-object p2

    .line 118
    :try_start_0
    new-instance p3, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$ModuleService;

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;

    invoke-interface {p0, p1, p4, p5}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;->attach(ILandroid/media/soundtrigger_middleware/ISoundTriggerCallback;Z)Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    move-result-object p0

    const/4 p1, 0x0

    invoke-direct {p3, p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$ModuleService;-><init>(Landroid/media/soundtrigger_middleware/ISoundTriggerModule;Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService-IA;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_0

    .line 119
    invoke-interface {p2}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_0
    return-object p3

    :catchall_0
    move-exception p0

    if-eqz p2, :cond_1

    .line 115
    :try_start_1
    invoke-interface {p2}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p0
.end method

.method public attachAsOriginator(ILandroid/media/permission/Identity;Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;)Landroid/media/soundtrigger_middleware/ISoundTriggerModule;
    .locals 2

    .line 107
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService;->establishIdentityDirect(Landroid/media/permission/Identity;)Landroid/media/permission/SafeCloseable;

    move-result-object p2

    .line 108
    :try_start_0
    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$ModuleService;

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;

    const/4 v1, 0x0

    invoke-interface {p0, p1, p3, v1}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;->attach(ILandroid/media/soundtrigger_middleware/ISoundTriggerCallback;Z)Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    move-result-object p0

    const/4 p1, 0x0

    invoke-direct {v0, p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$ModuleService;-><init>(Landroid/media/soundtrigger_middleware/ISoundTriggerModule;Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService-IA;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_0

    .line 109
    invoke-interface {p2}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_0
    return-object v0

    :catchall_0
    move-exception p0

    if-eqz p2, :cond_1

    .line 107
    :try_start_1
    invoke-interface {p2}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p0
.end method

.method public attachFakeHalInjection(Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;)V
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_SOUND_TRIGGER"

    invoke-static {v0, v1}, Landroid/content/PermissionChecker;->checkCallingOrSelfPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;)I

    .line 127
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    .line 128
    :try_start_0
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService;->mInjection:Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->registerClient(Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 129
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_1

    .line 127
    :try_start_1
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;

    instance-of p1, p0, Lcom/android/server/soundtrigger_middleware/Dumpable;

    if-eqz p1, :cond_0

    .line 135
    check-cast p0, Lcom/android/server/soundtrigger_middleware/Dumpable;

    invoke-interface {p0, p2}, Lcom/android/server/soundtrigger_middleware/Dumpable;->dump(Ljava/io/PrintWriter;)V

    :cond_0
    return-void
.end method

.method public final establishIdentityDirect(Landroid/media/permission/Identity;)Landroid/media/permission/SafeCloseable;
    .locals 0

    .line 148
    invoke-static {p1}, Landroid/media/permission/PermissionUtil;->establishIdentityDirect(Landroid/media/permission/Identity;)Landroid/media/permission/SafeCloseable;

    move-result-object p0

    return-object p0
.end method

.method public final establishIdentityIndirect(Landroid/media/permission/Identity;Landroid/media/permission/Identity;)Landroid/media/permission/SafeCloseable;
    .locals 1

    .line 142
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.SOUNDTRIGGER_DELEGATE_IDENTITY"

    invoke-static {p0, v0, p1, p2}, Landroid/media/permission/PermissionUtil;->establishIdentityIndirect(Landroid/content/Context;Ljava/lang/String;Landroid/media/permission/Identity;Landroid/media/permission/Identity;)Landroid/media/permission/SafeCloseable;

    move-result-object p0

    return-object p0
.end method

.method public listModulesAsMiddleman(Landroid/media/permission/Identity;Landroid/media/permission/Identity;)[Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;
    .locals 0

    .line 98
    invoke-virtual {p0, p1, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService;->establishIdentityIndirect(Landroid/media/permission/Identity;Landroid/media/permission/Identity;)Landroid/media/permission/SafeCloseable;

    move-result-object p1

    .line 100
    :try_start_0
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;

    invoke-interface {p0}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;->listModules()[Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 101
    invoke-interface {p1}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_0
    return-object p0

    :catchall_0
    move-exception p0

    if-eqz p1, :cond_1

    .line 98
    :try_start_1
    invoke-interface {p1}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p0
.end method

.method public listModulesAsOriginator(Landroid/media/permission/Identity;)[Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;
    .locals 0

    .line 90
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService;->establishIdentityDirect(Landroid/media/permission/Identity;)Landroid/media/permission/SafeCloseable;

    move-result-object p1

    .line 91
    :try_start_0
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;

    invoke-interface {p0}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;->listModules()[Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 92
    invoke-interface {p1}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_0
    return-object p0

    :catchall_0
    move-exception p0

    if-eqz p1, :cond_1

    .line 90
    :try_start_1
    invoke-interface {p1}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p0
.end method
