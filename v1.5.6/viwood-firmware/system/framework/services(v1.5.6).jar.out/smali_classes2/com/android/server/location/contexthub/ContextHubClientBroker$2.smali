.class public Lcom/android/server/location/contexthub/ContextHubClientBroker$2;
.super Ljava/lang/Object;
.source "ContextHubClientBroker.java"

# interfaces
.implements Landroid/app/PendingIntent$OnFinished;


# instance fields
.field public final synthetic val$broker:Lcom/android/server/location/contexthub/ContextHubClientBroker;

.field public final synthetic val$onFinishedCallback:Ljava/util/function/Consumer;


# direct methods
.method public constructor <init>(Lcom/android/server/location/contexthub/ContextHubClientBroker;Ljava/util/function/Consumer;Lcom/android/server/location/contexthub/ContextHubClientBroker;)V
    .locals 0

    .line 992
    iput-object p2, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$2;->val$onFinishedCallback:Ljava/util/function/Consumer;

    iput-object p3, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$2;->val$broker:Lcom/android/server/location/contexthub/ContextHubClientBroker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSendFinished(Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 1000
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$2;->val$onFinishedCallback:Ljava/util/function/Consumer;

    if-eqz v0, :cond_1

    if-nez p3, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 1001
    :goto_0
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1006
    :cond_1
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$2;->val$broker:Lcom/android/server/location/contexthub/ContextHubClientBroker;

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->onSendFinished(Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
