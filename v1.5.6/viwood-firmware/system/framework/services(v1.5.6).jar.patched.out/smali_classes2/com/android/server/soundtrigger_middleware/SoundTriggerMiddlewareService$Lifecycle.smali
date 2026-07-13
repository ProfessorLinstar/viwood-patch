.class public final Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "SoundTriggerMiddlewareService.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 237
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 9

    .line 242
    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;

    invoke-direct {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;-><init>()V

    .line 243
    new-instance v1, Lcom/android/server/soundtrigger_middleware/DefaultHalFactory;

    invoke-direct {v1}, Lcom/android/server/soundtrigger_middleware/DefaultHalFactory;-><init>()V

    new-instance v2, Lcom/android/server/soundtrigger_middleware/FakeHalFactory;

    invoke-direct {v2, v0}, Lcom/android/server/soundtrigger_middleware/FakeHalFactory;-><init>(Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;)V

    filled-new-array {v1, v2}, [Lcom/android/server/soundtrigger_middleware/HalFactory;

    move-result-object v1

    .line 246
    new-instance v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService;

    new-instance v3, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;

    .line 248
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission;

    new-instance v6, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;

    new-instance v7, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl;

    new-instance v8, Lcom/android/server/soundtrigger_middleware/AudioSessionProviderImpl;

    invoke-direct {v8}, Lcom/android/server/soundtrigger_middleware/AudioSessionProviderImpl;-><init>()V

    invoke-direct {v7, v1, v8}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl;-><init>([Lcom/android/server/soundtrigger_middleware/HalFactory;Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider;)V

    invoke-direct {v6, v7}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;-><init>(Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;)V

    .line 253
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v5, v6, v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission;-><init>(Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;Landroid/content/Context;)V

    invoke-direct {v3, v4, v5}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;-><init>(Landroid/content/Context;Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;)V

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v0, v4}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService;-><init>(Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;Landroid/content/Context;Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService-IA;)V

    .line 246
    const-string/jumbo v0, "soundtrigger_middleware"

    invoke-virtual {p0, v0, v2}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method
