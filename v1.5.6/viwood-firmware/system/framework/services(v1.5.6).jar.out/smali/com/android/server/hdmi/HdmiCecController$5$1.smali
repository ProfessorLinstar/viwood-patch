.class public Lcom/android/server/hdmi/HdmiCecController$5$1;
.super Ljava/lang/Object;
.source "HdmiCecController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/android/server/hdmi/HdmiCecController$5;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecController$5;)V
    .locals 0

    .line 602
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecController$5$1;->this$1:Lcom/android/server/hdmi/HdmiCecController$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 605
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$5$1;->this$1:Lcom/android/server/hdmi/HdmiCecController$5;

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$5;->this$0:Lcom/android/server/hdmi/HdmiCecController;

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecController$5;->val$sourceAddress:I

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecController$5;->val$candidates:Ljava/util/List;

    iget v3, p0, Lcom/android/server/hdmi/HdmiCecController$5;->val$retryCount:I

    iget-object v4, p0, Lcom/android/server/hdmi/HdmiCecController$5;->val$callback:Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;

    iget-object v5, p0, Lcom/android/server/hdmi/HdmiCecController$5;->val$allocated:Ljava/util/List;

    iget-wide v6, p0, Lcom/android/server/hdmi/HdmiCecController$5;->val$pollingMessageInterval:J

    const/4 v8, 0x1

    invoke-static/range {v0 .. v8}, Lcom/android/server/hdmi/HdmiCecController;->-$$Nest$mrunDevicePolling(Lcom/android/server/hdmi/HdmiCecController;ILjava/util/List;ILcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;Ljava/util/List;JZ)V

    return-void
.end method
