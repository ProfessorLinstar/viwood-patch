.class public final Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService$MusicRecognitionServiceCallback;
.super Landroid/media/musicrecognition/IMusicRecognitionServiceCallback$Stub;
.source "MusicRecognitionManagerPerUserService.java"


# instance fields
.field public final mClientCallback:Landroid/media/musicrecognition/IMusicRecognitionManagerCallback;

.field public final synthetic this$0:Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;


# direct methods
.method public static bridge synthetic -$$Nest$mgetClientCallback(Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService$MusicRecognitionServiceCallback;)Landroid/media/musicrecognition/IMusicRecognitionManagerCallback;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService$MusicRecognitionServiceCallback;->getClientCallback()Landroid/media/musicrecognition/IMusicRecognitionManagerCallback;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;Landroid/media/musicrecognition/IMusicRecognitionManagerCallback;)V
    .locals 0

    .line 306
    iput-object p1, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService$MusicRecognitionServiceCallback;->this$0:Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;

    invoke-direct {p0}, Landroid/media/musicrecognition/IMusicRecognitionServiceCallback$Stub;-><init>()V

    .line 307
    iput-object p2, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService$MusicRecognitionServiceCallback;->mClientCallback:Landroid/media/musicrecognition/IMusicRecognitionManagerCallback;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;Landroid/media/musicrecognition/IMusicRecognitionManagerCallback;Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService$MusicRecognitionServiceCallback;-><init>(Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;Landroid/media/musicrecognition/IMusicRecognitionManagerCallback;)V

    return-void
.end method


# virtual methods
.method public final getClientCallback()Landroid/media/musicrecognition/IMusicRecognitionManagerCallback;
    .locals 0

    .line 332
    iget-object p0, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService$MusicRecognitionServiceCallback;->mClientCallback:Landroid/media/musicrecognition/IMusicRecognitionManagerCallback;

    return-object p0
.end method

.method public onRecognitionFailed(I)V
    .locals 1

    .line 324
    :try_start_0
    iget-object v0, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService$MusicRecognitionServiceCallback;->mClientCallback:Landroid/media/musicrecognition/IMusicRecognitionManagerCallback;

    invoke-interface {v0, p1}, Landroid/media/musicrecognition/IMusicRecognitionManagerCallback;->onRecognitionFailed(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    :catch_0
    iget-object p0, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService$MusicRecognitionServiceCallback;->this$0:Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;

    invoke-static {p0}, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->-$$Nest$mdestroyService(Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;)V

    return-void
.end method

.method public onRecognitionSucceeded(Landroid/media/MediaMetadata;Landroid/os/Bundle;)V
    .locals 1

    .line 313
    :try_start_0
    invoke-static {p2}, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->-$$Nest$smsanitizeBundle(Landroid/os/Bundle;)V

    .line 314
    iget-object v0, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService$MusicRecognitionServiceCallback;->mClientCallback:Landroid/media/musicrecognition/IMusicRecognitionManagerCallback;

    invoke-interface {v0, p1, p2}, Landroid/media/musicrecognition/IMusicRecognitionManagerCallback;->onRecognitionSucceeded(Landroid/media/MediaMetadata;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    :catch_0
    iget-object p0, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService$MusicRecognitionServiceCallback;->this$0:Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;

    invoke-static {p0}, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->-$$Nest$mdestroyService(Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;)V

    return-void
.end method
