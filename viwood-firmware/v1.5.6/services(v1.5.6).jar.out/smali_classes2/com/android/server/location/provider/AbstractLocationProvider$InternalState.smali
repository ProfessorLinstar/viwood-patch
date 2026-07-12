.class public Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;
.super Ljava/lang/Object;
.source "AbstractLocationProvider.java"


# instance fields
.field public final listener:Lcom/android/server/location/provider/AbstractLocationProvider$Listener;

.field public final state:Lcom/android/server/location/provider/AbstractLocationProvider$State;


# direct methods
.method public constructor <init>(Lcom/android/server/location/provider/AbstractLocationProvider$Listener;Lcom/android/server/location/provider/AbstractLocationProvider$State;)V
    .locals 0

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    iput-object p1, p0, Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;->listener:Lcom/android/server/location/provider/AbstractLocationProvider$Listener;

    .line 177
    iput-object p2, p0, Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;->state:Lcom/android/server/location/provider/AbstractLocationProvider$State;

    return-void
.end method


# virtual methods
.method public withListener(Lcom/android/server/location/provider/AbstractLocationProvider$Listener;)Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;->listener:Lcom/android/server/location/provider/AbstractLocationProvider$Listener;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 184
    :cond_0
    new-instance v0, Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;

    iget-object p0, p0, Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;->state:Lcom/android/server/location/provider/AbstractLocationProvider$State;

    invoke-direct {v0, p1, p0}, Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;-><init>(Lcom/android/server/location/provider/AbstractLocationProvider$Listener;Lcom/android/server/location/provider/AbstractLocationProvider$State;)V

    return-object v0
.end method

.method public withState(Lcom/android/server/location/provider/AbstractLocationProvider$State;)Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;->state:Lcom/android/server/location/provider/AbstractLocationProvider$State;

    invoke-virtual {p1, v0}, Lcom/android/server/location/provider/AbstractLocationProvider$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 192
    :cond_0
    new-instance v0, Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;

    iget-object p0, p0, Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;->listener:Lcom/android/server/location/provider/AbstractLocationProvider$Listener;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;-><init>(Lcom/android/server/location/provider/AbstractLocationProvider$Listener;Lcom/android/server/location/provider/AbstractLocationProvider$State;)V

    return-object v0
.end method

.method public withState(Ljava/util/function/UnaryOperator;)Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;->state:Lcom/android/server/location/provider/AbstractLocationProvider$State;

    invoke-interface {p1, v0}, Ljava/util/function/UnaryOperator;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/location/provider/AbstractLocationProvider$State;

    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;->withState(Lcom/android/server/location/provider/AbstractLocationProvider$State;)Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;

    move-result-object p0

    return-object p0
.end method
