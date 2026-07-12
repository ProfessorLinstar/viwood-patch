.class public Lcom/android/server/blob/BlobStoreManagerService$StatsPullAtomCallbackImpl;
.super Ljava/lang/Object;
.source "BlobStoreManagerService.java"

# interfaces
.implements Landroid/app/StatsManager$StatsPullAtomCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/blob/BlobStoreManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/blob/BlobStoreManagerService;)V
    .locals 0

    .line 1932
    iput-object p1, p0, Lcom/android/server/blob/BlobStoreManagerService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/blob/BlobStoreManagerService;Lcom/android/server/blob/BlobStoreManagerService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/blob/BlobStoreManagerService$StatsPullAtomCallbackImpl;-><init>(Lcom/android/server/blob/BlobStoreManagerService;)V

    return-void
.end method


# virtual methods
.method public onPullAtom(ILjava/util/List;)I
    .locals 1

    const/16 v0, 0x2761

    if-ne p1, v0, :cond_0

    .line 1937
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {p0, p1, p2}, Lcom/android/server/blob/BlobStoreManagerService;->-$$Nest$mpullBlobData(Lcom/android/server/blob/BlobStoreManagerService;ILjava/util/List;)I

    move-result p0

    return p0

    .line 1939
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown tagId="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
