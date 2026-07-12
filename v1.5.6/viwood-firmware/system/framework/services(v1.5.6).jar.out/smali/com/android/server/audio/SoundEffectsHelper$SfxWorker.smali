.class public Lcom/android/server/audio/SoundEffectsHelper$SfxWorker;
.super Ljava/lang/Thread;
.source "SoundEffectsHelper.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/audio/SoundEffectsHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/SoundEffectsHelper;)V
    .locals 0

    .line 455
    iput-object p1, p0, Lcom/android/server/audio/SoundEffectsHelper$SfxWorker;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    .line 456
    const-string p1, "AS.SfxWorker"

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 461
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 462
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper$SfxWorker;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    monitor-enter v0

    .line 463
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/SoundEffectsHelper$SfxWorker;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    new-instance v2, Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;

    iget-object v3, p0, Lcom/android/server/audio/SoundEffectsHelper$SfxWorker;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;-><init>(Lcom/android/server/audio/SoundEffectsHelper;Lcom/android/server/audio/SoundEffectsHelper-IA;)V

    invoke-static {v1, v2}, Lcom/android/server/audio/SoundEffectsHelper;->-$$Nest$fputmSfxHandler(Lcom/android/server/audio/SoundEffectsHelper;Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;)V

    .line 464
    iget-object p0, p0, Lcom/android/server/audio/SoundEffectsHelper$SfxWorker;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 465
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 466
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void

    :catchall_0
    move-exception p0

    .line 465
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
