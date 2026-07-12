.class public Lcom/android/server/am/BroadcastController$1;
.super Lcom/android/server/IntentResolver;
.source "BroadcastController.java"


# direct methods
.method public constructor <init>(Lcom/android/server/am/BroadcastController;)V
    .locals 0

    .line 200
    invoke-direct {p0}, Lcom/android/server/IntentResolver;-><init>()V

    return-void
.end method


# virtual methods
.method public allowFilterResult(Lcom/android/server/am/BroadcastFilter;Ljava/util/List;)Z
    .locals 2

    .line 204
    iget-object p0, p1, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object p0, p0, Lcom/android/server/am/ReceiverList;->receiver:Landroid/content/IIntentReceiver;

    invoke-interface {p0}, Landroid/content/IIntentReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    .line 205
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    :goto_0
    if-ltz p1, :cond_1

    .line 206
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/BroadcastFilter;

    iget-object v1, v1, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v1, v1, Lcom/android/server/am/ReceiverList;->receiver:Landroid/content/IIntentReceiver;

    invoke-interface {v1}, Landroid/content/IIntentReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    if-ne v1, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public bridge synthetic allowFilterResult(Ljava/lang/Object;Ljava/util/List;)Z
    .locals 0

    .line 200
    check-cast p1, Lcom/android/server/am/BroadcastFilter;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/BroadcastController$1;->allowFilterResult(Lcom/android/server/am/BroadcastFilter;Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public getIntentFilter(Lcom/android/server/am/BroadcastFilter;)Landroid/content/IntentFilter;
    .locals 0

    .line 0
    return-object p1
.end method

.method public bridge synthetic getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;
    .locals 0

    .line 200
    check-cast p1, Lcom/android/server/am/BroadcastFilter;

    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastController$1;->getIntentFilter(Lcom/android/server/am/BroadcastFilter;)Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public isPackageForFilter(Ljava/lang/String;Lcom/android/server/am/BroadcastFilter;)Z
    .locals 0

    .line 235
    iget-object p0, p2, Lcom/android/server/am/BroadcastFilter;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPackageForFilter(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 0

    .line 200
    check-cast p2, Lcom/android/server/am/BroadcastFilter;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/BroadcastController$1;->isPackageForFilter(Ljava/lang/String;Lcom/android/server/am/BroadcastFilter;)Z

    move-result p0

    return p0
.end method

.method public newArray(I)[Lcom/android/server/am/BroadcastFilter;
    .locals 0

    .line 230
    new-array p0, p1, [Lcom/android/server/am/BroadcastFilter;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 200
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastController$1;->newArray(I)[Lcom/android/server/am/BroadcastFilter;

    move-result-object p0

    return-object p0
.end method

.method public newResult(Lcom/android/server/pm/Computer;Lcom/android/server/am/BroadcastFilter;IIJ)Lcom/android/server/am/BroadcastFilter;
    .locals 7

    const/4 v0, -0x1

    if-eq p4, v0, :cond_0

    .line 216
    iget v1, p2, Lcom/android/server/am/BroadcastFilter;->owningUserId:I

    if-eq v1, v0, :cond_0

    if-ne p4, v1, :cond_1

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-wide v5, p5

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0

    .line 218
    :goto_0
    invoke-super/range {v0 .. v6}, Lcom/android/server/IntentResolver;->newResult(Lcom/android/server/pm/Computer;Ljava/lang/Object;IIJ)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/BroadcastFilter;

    return-object p0
.end method

.method public bridge synthetic newResult(Lcom/android/server/pm/Computer;Ljava/lang/Object;IIJ)Ljava/lang/Object;
    .locals 0

    .line 200
    check-cast p2, Lcom/android/server/am/BroadcastFilter;

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/am/BroadcastController$1;->newResult(Lcom/android/server/pm/Computer;Lcom/android/server/am/BroadcastFilter;IIJ)Lcom/android/server/am/BroadcastFilter;

    move-result-object p0

    return-object p0
.end method
