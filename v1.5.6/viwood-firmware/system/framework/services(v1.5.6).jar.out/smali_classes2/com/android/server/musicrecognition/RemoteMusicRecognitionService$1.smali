.class public Lcom/android/server/musicrecognition/RemoteMusicRecognitionService$1;
.super Landroid/media/musicrecognition/IMusicRecognitionAttributionTagCallback$Stub;
.source "RemoteMusicRecognitionService.java"


# instance fields
.field public final synthetic val$attributionTagFuture:Ljava/util/concurrent/CompletableFuture;


# direct methods
.method public constructor <init>(Lcom/android/server/musicrecognition/RemoteMusicRecognitionService;Ljava/util/concurrent/CompletableFuture;)V
    .locals 0

    .line 103
    iput-object p2, p0, Lcom/android/server/musicrecognition/RemoteMusicRecognitionService$1;->val$attributionTagFuture:Ljava/util/concurrent/CompletableFuture;

    invoke-direct {p0}, Landroid/media/musicrecognition/IMusicRecognitionAttributionTagCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttributionTag(Ljava/lang/String;)V
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/android/server/musicrecognition/RemoteMusicRecognitionService$1;->val$attributionTagFuture:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method
