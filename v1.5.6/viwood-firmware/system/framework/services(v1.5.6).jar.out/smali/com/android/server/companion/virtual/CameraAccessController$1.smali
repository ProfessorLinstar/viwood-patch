.class public Lcom/android/server/companion/virtual/CameraAccessController$1;
.super Landroid/hardware/camera2/CameraInjectionSession$InjectionStatusCallback;
.source "CameraAccessController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/companion/virtual/CameraAccessController;

.field public final synthetic val$cameraId:Ljava/lang/String;

.field public final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/companion/virtual/CameraAccessController;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 267
    iput-object p1, p0, Lcom/android/server/companion/virtual/CameraAccessController$1;->this$0:Lcom/android/server/companion/virtual/CameraAccessController;

    iput-object p2, p0, Lcom/android/server/companion/virtual/CameraAccessController$1;->val$cameraId:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/companion/virtual/CameraAccessController$1;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraInjectionSession$InjectionStatusCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onInjectionError(I)V
    .locals 2

    .line 277
    iget-object v0, p0, Lcom/android/server/companion/virtual/CameraAccessController$1;->this$0:Lcom/android/server/companion/virtual/CameraAccessController;

    iget-object v1, p0, Lcom/android/server/companion/virtual/CameraAccessController$1;->val$cameraId:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/companion/virtual/CameraAccessController$1;->val$packageName:Ljava/lang/String;

    invoke-static {v0, v1, p0, p1}, Lcom/android/server/companion/virtual/CameraAccessController;->-$$Nest$monInjectionError(Lcom/android/server/companion/virtual/CameraAccessController;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public onInjectionSucceeded(Landroid/hardware/camera2/CameraInjectionSession;)V
    .locals 2

    .line 271
    iget-object v0, p0, Lcom/android/server/companion/virtual/CameraAccessController$1;->this$0:Lcom/android/server/companion/virtual/CameraAccessController;

    iget-object v1, p0, Lcom/android/server/companion/virtual/CameraAccessController$1;->val$cameraId:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/companion/virtual/CameraAccessController$1;->val$packageName:Ljava/lang/String;

    invoke-static {v0, v1, p0, p1}, Lcom/android/server/companion/virtual/CameraAccessController;->-$$Nest$monInjectionSucceeded(Lcom/android/server/companion/virtual/CameraAccessController;Ljava/lang/String;Ljava/lang/String;Landroid/hardware/camera2/CameraInjectionSession;)V

    return-void
.end method
