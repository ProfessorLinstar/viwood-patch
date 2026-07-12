.class public final synthetic Lcom/android/server/location/contexthub/ContextHubEndpointBroker$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/location/contexthub/ContextHubEndpointBroker$CallbackConsumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Landroid/hardware/contexthub/HubMessage;


# direct methods
.method public synthetic constructor <init>(ILandroid/hardware/contexthub/HubMessage;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$$ExternalSyntheticLambda8;->f$0:I

    iput-object p2, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$$ExternalSyntheticLambda8;->f$1:Landroid/hardware/contexthub/HubMessage;

    return-void
.end method


# virtual methods
.method public final accept(Landroid/hardware/contexthub/IContextHubEndpointCallback;)V
    .locals 1

    .line 0
    iget v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$$ExternalSyntheticLambda8;->f$0:I

    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$$ExternalSyntheticLambda8;->f$1:Landroid/hardware/contexthub/HubMessage;

    invoke-static {v0, p0, p1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->$r8$lambda$TeYeitRpnVnL937nMEKSkrgZI9k(ILandroid/hardware/contexthub/HubMessage;Landroid/hardware/contexthub/IContextHubEndpointCallback;)V

    return-void
.end method
