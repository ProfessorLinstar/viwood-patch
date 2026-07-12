.class public Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper$1;
.super Landroid/hardware/face/FaceServiceReceiver;
.source "FaceService.java"


# instance fields
.field public final numSensors:I

.field public sensorsFinishedRemoving:I

.field public final synthetic this$1:Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;

.field public final synthetic val$receiver:Landroid/hardware/face/IFaceServiceReceiver;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;Landroid/hardware/face/IFaceServiceReceiver;)V
    .locals 0

    .line 427
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper$1;->this$1:Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper$1;->val$receiver:Landroid/hardware/face/IFaceServiceReceiver;

    invoke-direct {p0}, Landroid/hardware/face/FaceServiceReceiver;-><init>()V

    const/4 p2, 0x0

    .line 428
    iput p2, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper$1;->sensorsFinishedRemoving:I

    .line 429
    iget-object p2, p1, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 430
    invoke-virtual {p2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object p2

    .line 429
    invoke-virtual {p1, p2}, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->getSensorPropertiesInternal(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 430
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper$1;->numSensors:I

    return-void
.end method


# virtual methods
.method public onError(II)V
    .locals 0

    .line 445
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper$1;->val$receiver:Landroid/hardware/face/IFaceServiceReceiver;

    invoke-interface {p0, p1, p2}, Landroid/hardware/face/IFaceServiceReceiver;->onError(II)V

    return-void
.end method

.method public onRemoved(Landroid/hardware/face/Face;I)V
    .locals 0

    if-nez p2, :cond_0

    .line 434
    iget p1, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper$1;->sensorsFinishedRemoving:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper$1;->sensorsFinishedRemoving:I

    .line 435
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "sensorsFinishedRemoving: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper$1;->sensorsFinishedRemoving:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", numSensors: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper$1;->numSensors:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FaceService"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    iget p1, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper$1;->sensorsFinishedRemoving:I

    iget p2, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper$1;->numSensors:I

    if-ne p1, p2, :cond_0

    .line 438
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper$1;->val$receiver:Landroid/hardware/face/IFaceServiceReceiver;

    const/4 p1, 0x0

    const/4 p2, 0x0

    invoke-interface {p0, p1, p2}, Landroid/hardware/face/IFaceServiceReceiver;->onRemoved(Landroid/hardware/face/Face;I)V

    :cond_0
    return-void
.end method
