.class public Lcom/android/server/wearable/WearableSensingManagerPerUserService$3;
.super Ljava/lang/Object;
.source "WearableSensingManagerPerUserService.java"

# interfaces
.implements Landroid/service/voice/VoiceInteractionManagerInternal$WearableHotwordDetectionCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/wearable/WearableSensingManagerPerUserService;


# direct methods
.method public constructor <init>(Lcom/android/server/wearable/WearableSensingManagerPerUserService;)V
    .locals 0

    .line 659
    iput-object p1, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$3;->this$0:Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDetected()V
    .locals 2

    .line 662
    invoke-static {}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hotwordDetectionCallback onDetected."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$3;->this$0:Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    invoke-static {p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->-$$Nest$monValidatedByHotwordDetectionService(Lcom/android/server/wearable/WearableSensingManagerPerUserService;)V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 3

    .line 674
    invoke-static {}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hotwordDetectionCallback onError. ErrorMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$3;->this$0:Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    invoke-static {p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->-$$Nest$mstopActiveHotwordAudio(Lcom/android/server/wearable/WearableSensingManagerPerUserService;)V

    return-void
.end method

.method public onRejected()V
    .locals 2

    .line 668
    invoke-static {}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hotwordDetectionCallback onRejected."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$3;->this$0:Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    invoke-static {p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->-$$Nest$mstopActiveHotwordAudio(Lcom/android/server/wearable/WearableSensingManagerPerUserService;)V

    return-void
.end method
