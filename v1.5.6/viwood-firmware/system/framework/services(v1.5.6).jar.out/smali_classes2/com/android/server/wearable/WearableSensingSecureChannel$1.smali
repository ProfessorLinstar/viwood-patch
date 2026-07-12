.class public Lcom/android/server/wearable/WearableSensingSecureChannel$1;
.super Landroid/companion/CompanionDeviceManager$Callback;
.source "WearableSensingSecureChannel.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wearable/WearableSensingSecureChannel;


# direct methods
.method public constructor <init>(Lcom/android/server/wearable/WearableSensingSecureChannel;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/android/server/wearable/WearableSensingSecureChannel$1;->this$0:Lcom/android/server/wearable/WearableSensingSecureChannel;

    invoke-direct {p0}, Landroid/companion/CompanionDeviceManager$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAssociationCreated(Landroid/companion/AssociationInfo;)V
    .locals 0

    .line 165
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingSecureChannel$1;->this$0:Lcom/android/server/wearable/WearableSensingSecureChannel;

    .line 166
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getId()I

    move-result p1

    .line 165
    invoke-static {p0, p1}, Lcom/android/server/wearable/WearableSensingSecureChannel;->-$$Nest$monAssociationCreated(Lcom/android/server/wearable/WearableSensingSecureChannel;I)V

    return-void
.end method

.method public onFailure(Ljava/lang/CharSequence;)V
    .locals 3

    .line 171
    invoke-static {}, Lcom/android/server/wearable/WearableSensingSecureChannel;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to create CompanionDeviceManager association: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingSecureChannel$1;->this$0:Lcom/android/server/wearable/WearableSensingSecureChannel;

    invoke-static {p0}, Lcom/android/server/wearable/WearableSensingSecureChannel;->-$$Nest$monError(Lcom/android/server/wearable/WearableSensingSecureChannel;)V

    return-void
.end method
