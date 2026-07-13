.class public interface abstract Lcom/android/server/location/contexthub/IContextHubWrapper$ICallback;
.super Ljava/lang/Object;
.source "IContextHubWrapper.java"


# virtual methods
.method public abstract handleContextHubEvent(I)V
.end method

.method public abstract handleMessageDeliveryStatus(Landroid/hardware/contexthub/MessageDeliveryStatus;)V
.end method

.method public abstract handleNanoappAbort(JI)V
.end method

.method public abstract handleNanoappInfo(Ljava/util/List;)V
.end method

.method public abstract handleNanoappMessage(SLandroid/hardware/location/NanoAppMessage;Ljava/util/List;Ljava/util/List;)V
.end method

.method public abstract handleServiceRestart()V
.end method

.method public abstract handleTransactionResult(IZ)V
.end method
