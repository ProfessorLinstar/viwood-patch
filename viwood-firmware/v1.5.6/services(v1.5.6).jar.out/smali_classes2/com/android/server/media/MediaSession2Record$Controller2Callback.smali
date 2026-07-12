.class public Lcom/android/server/media/MediaSession2Record$Controller2Callback;
.super Landroid/media/MediaController2$ControllerCallback;
.source "MediaSession2Record.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/MediaSession2Record;


# direct methods
.method public constructor <init>(Lcom/android/server/media/MediaSession2Record;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/android/server/media/MediaSession2Record$Controller2Callback;->this$0:Lcom/android/server/media/MediaSession2Record;

    invoke-direct {p0}, Landroid/media/MediaController2$ControllerCallback;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/media/MediaSession2Record;Lcom/android/server/media/MediaSession2Record-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSession2Record$Controller2Callback;-><init>(Lcom/android/server/media/MediaSession2Record;)V

    return-void
.end method


# virtual methods
.method public onConnected(Landroid/media/MediaController2;Landroid/media/Session2CommandGroup;)V
    .locals 2

    .line 215
    invoke-static {}, Lcom/android/server/media/MediaSession2Record;->-$$Nest$sfgetDEBUG()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 216
    const-string p1, "MediaSession2Record"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connected to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/media/MediaSession2Record$Controller2Callback;->this$0:Lcom/android/server/media/MediaSession2Record;

    invoke-static {v1}, Lcom/android/server/media/MediaSession2Record;->-$$Nest$fgetmSessionToken(Lcom/android/server/media/MediaSession2Record;)Landroid/media/Session2Token;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", allowed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_0
    iget-object p1, p0, Lcom/android/server/media/MediaSession2Record$Controller2Callback;->this$0:Lcom/android/server/media/MediaSession2Record;

    invoke-static {p1}, Lcom/android/server/media/MediaSession2Record;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaSession2Record;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 220
    :try_start_0
    iget-object p2, p0, Lcom/android/server/media/MediaSession2Record$Controller2Callback;->this$0:Lcom/android/server/media/MediaSession2Record;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/android/server/media/MediaSession2Record;->-$$Nest$fputmIsConnected(Lcom/android/server/media/MediaSession2Record;Z)V

    .line 221
    iget-object p2, p0, Lcom/android/server/media/MediaSession2Record$Controller2Callback;->this$0:Lcom/android/server/media/MediaSession2Record;

    invoke-static {p2}, Lcom/android/server/media/MediaSession2Record;->-$$Nest$fgetmService(Lcom/android/server/media/MediaSession2Record;)Lcom/android/server/media/MediaSessionService;

    move-result-object p2

    .line 222
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    iget-object p0, p0, Lcom/android/server/media/MediaSession2Record$Controller2Callback;->this$0:Lcom/android/server/media/MediaSession2Record;

    const/4 p1, 0x0

    invoke-virtual {p2, p0, p1}, Lcom/android/server/media/MediaSessionService;->onSessionActiveStateChanged(Lcom/android/server/media/MediaSessionRecordImpl;Landroid/media/session/PlaybackState;)V

    return-void

    :catchall_0
    move-exception p0

    .line 222
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onDisconnected(Landroid/media/MediaController2;)V
    .locals 2

    .line 229
    invoke-static {}, Lcom/android/server/media/MediaSession2Record;->-$$Nest$sfgetDEBUG()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 230
    const-string p1, "MediaSession2Record"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disconnected from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/media/MediaSession2Record$Controller2Callback;->this$0:Lcom/android/server/media/MediaSession2Record;

    invoke-static {v1}, Lcom/android/server/media/MediaSession2Record;->-$$Nest$fgetmSessionToken(Lcom/android/server/media/MediaSession2Record;)Landroid/media/Session2Token;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_0
    iget-object p1, p0, Lcom/android/server/media/MediaSession2Record$Controller2Callback;->this$0:Lcom/android/server/media/MediaSession2Record;

    invoke-static {p1}, Lcom/android/server/media/MediaSession2Record;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaSession2Record;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 234
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSession2Record$Controller2Callback;->this$0:Lcom/android/server/media/MediaSession2Record;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/media/MediaSession2Record;->-$$Nest$fputmIsConnected(Lcom/android/server/media/MediaSession2Record;Z)V

    .line 235
    iget-object v0, p0, Lcom/android/server/media/MediaSession2Record$Controller2Callback;->this$0:Lcom/android/server/media/MediaSession2Record;

    invoke-static {v0}, Lcom/android/server/media/MediaSession2Record;->-$$Nest$fgetmService(Lcom/android/server/media/MediaSession2Record;)Lcom/android/server/media/MediaSessionService;

    move-result-object v0

    .line 236
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    iget-object p0, p0, Lcom/android/server/media/MediaSession2Record$Controller2Callback;->this$0:Lcom/android/server/media/MediaSession2Record;

    invoke-virtual {v0, p0}, Lcom/android/server/media/MediaSessionService;->onSessionDied(Lcom/android/server/media/MediaSessionRecordImpl;)V

    return-void

    :catchall_0
    move-exception p0

    .line 236
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onPlaybackActiveChanged(Landroid/media/MediaController2;Z)V
    .locals 2

    .line 242
    invoke-static {}, Lcom/android/server/media/MediaSession2Record;->-$$Nest$sfgetDEBUG()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 243
    const-string p1, "MediaSession2Record"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "playback active changed, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/media/MediaSession2Record$Controller2Callback;->this$0:Lcom/android/server/media/MediaSession2Record;

    invoke-static {v1}, Lcom/android/server/media/MediaSession2Record;->-$$Nest$fgetmSessionToken(Lcom/android/server/media/MediaSession2Record;)Landroid/media/Session2Token;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", active="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_0
    iget-object p1, p0, Lcom/android/server/media/MediaSession2Record$Controller2Callback;->this$0:Lcom/android/server/media/MediaSession2Record;

    invoke-static {p1}, Lcom/android/server/media/MediaSession2Record;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaSession2Record;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 248
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSession2Record$Controller2Callback;->this$0:Lcom/android/server/media/MediaSession2Record;

    invoke-static {v0}, Lcom/android/server/media/MediaSession2Record;->-$$Nest$fgetmService(Lcom/android/server/media/MediaSession2Record;)Lcom/android/server/media/MediaSessionService;

    move-result-object v0

    .line 249
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    iget-object p0, p0, Lcom/android/server/media/MediaSession2Record$Controller2Callback;->this$0:Lcom/android/server/media/MediaSession2Record;

    const/4 p1, 0x0

    invoke-virtual {v0, p0, p2, p1}, Lcom/android/server/media/MediaSessionService;->onSessionPlaybackStateChanged(Lcom/android/server/media/MediaSessionRecordImpl;ZLandroid/media/session/PlaybackState;)V

    return-void

    :catchall_0
    move-exception p0

    .line 249
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
