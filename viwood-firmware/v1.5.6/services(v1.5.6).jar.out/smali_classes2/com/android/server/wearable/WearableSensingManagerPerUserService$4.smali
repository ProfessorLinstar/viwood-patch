.class public Lcom/android/server/wearable/WearableSensingManagerPerUserService$4;
.super Landroid/app/wearable/IWearableSensingCallback$Stub;
.source "WearableSensingManagerPerUserService.java"


# instance fields
.field public final synthetic val$callbackFromAppProcess:Landroid/app/wearable/IWearableSensingCallback;


# direct methods
.method public static synthetic $r8$lambda$I-Pr8xf87PXPhJ3a4Fuh72piyfQ(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;Landroid/os/ParcelFileDescriptor;Ljava/lang/Throwable;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 711
    invoke-static {}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error when reading file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0, p3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 715
    invoke-virtual {p1, v0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 719
    invoke-virtual {p1, v0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    return-void

    .line 722
    :cond_1
    invoke-static {p2}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->-$$Nest$smisReadOnly(Landroid/os/ParcelFileDescriptor;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 723
    invoke-virtual {p1, p2}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    return-void

    .line 726
    :cond_2
    invoke-static {}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p2, "Received writable ParcelFileDescriptor from app process. To prevent arbitrary data egress, sending null to WearableSensingService instead."

    invoke-static {p0, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    invoke-virtual {p1, v0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wearable/WearableSensingManagerPerUserService;Landroid/app/wearable/IWearableSensingCallback;)V
    .locals 0

    .line 700
    iput-object p2, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$4;->val$callbackFromAppProcess:Landroid/app/wearable/IWearableSensingCallback;

    invoke-direct {p0}, Landroid/app/wearable/IWearableSensingCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public openFile(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V
    .locals 2

    .line 706
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    new-instance v1, Lcom/android/server/wearable/WearableSensingManagerPerUserService$4$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p2}, Lcom/android/server/wearable/WearableSensingManagerPerUserService$4$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V

    .line 708
    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->whenComplete(Ljava/util/function/BiConsumer;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p2

    .line 736
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$4;->val$callbackFromAppProcess:Landroid/app/wearable/IWearableSensingCallback;

    invoke-interface {p0, p1, p2}, Landroid/app/wearable/IWearableSensingCallback;->openFile(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V

    return-void
.end method
