.class public Lcom/android/server/wm/WindowContextListenerController;
.super Ljava/lang/Object;
.source "WindowContextListenerController.java"


# instance fields
.field final mListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowContextListenerController;->mListeners:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method public assertCallerCanModifyListener(Landroid/os/IBinder;ZI)Z
    .locals 1

    .line 155
    iget-object p0, p0, Lcom/android/server/wm/WindowContextListenerController;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;

    if-nez p0, :cond_1

    .line 157
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_ADD_REMOVE_enabled:[Z

    const/4 p1, 0x2

    aget-boolean p0, p0, p1

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide p2, 0x1e07d3211d823694L    # 5.171544319701256E-164

    const/4 v0, 0x0

    invoke-static {p0, p2, p3, p1, v0}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_0
    return p1

    :cond_1
    const/4 p1, 0x1

    if-eqz p2, :cond_2

    return p1

    .line 163
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->getUid()I

    move-result p2

    if-ne p3, p2, :cond_3

    return p1

    .line 164
    :cond_3
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Uid mismatch. Caller uid is "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", while the listener\'s owner is from "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->getUid()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public assertCallerCanReparentListener(Landroid/os/IBinder;ZII)Z
    .locals 0

    .line 172
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/WindowContextListenerController;->assertCallerCanModifyListener(Landroid/os/IBinder;ZI)Z

    move-result p2

    const/4 p3, 0x0

    if-nez p2, :cond_0

    return p3

    .line 176
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContextListenerController;->getContainer(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 177
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 178
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-ne p0, p4, :cond_2

    .line 179
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_ADD_REMOVE_enabled:[Z

    const/4 p1, 0x2

    aget-boolean p0, p0, p1

    if-eqz p0, :cond_1

    sget-object p0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide p1, 0x30ae9add50a6314cL    # 3.3831605265370928E-74

    const/4 p4, 0x0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_1
    return p3

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public dispatchPendingConfigurationIfNeeded(I)V
    .locals 3

    .line 140
    iget-object v0, p0, Lcom/android/server/wm/WindowContextListenerController;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 141
    iget-object v1, p0, Lcom/android/server/wm/WindowContextListenerController;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;

    .line 142
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->getWindowContainer()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-static {v1}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->-$$Nest$fgetmHasPendingConfiguration(Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 144
    invoke-static {v1}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->-$$Nest$mdispatchWindowContextInfoChange(Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getContainer(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;
    .locals 0

    .line 201
    iget-object p0, p0, Lcom/android/server/wm/WindowContextListenerController;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;

    if-eqz p0, :cond_0

    .line 202
    invoke-static {p0}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->-$$Nest$fgetmContainer(Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;)Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getOptions(Landroid/os/IBinder;)Landroid/os/Bundle;
    .locals 0

    .line 196
    iget-object p0, p0, Lcom/android/server/wm/WindowContextListenerController;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;

    if-eqz p0, :cond_0

    .line 197
    invoke-static {p0}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->-$$Nest$fgetmOptions(Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getWindowType(Landroid/os/IBinder;)I
    .locals 0

    .line 191
    iget-object p0, p0, Lcom/android/server/wm/WindowContextListenerController;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;

    if-eqz p0, :cond_0

    .line 192
    invoke-static {p0}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->-$$Nest$fgetmType(Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public hasListener(Landroid/os/IBinder;)Z
    .locals 0

    .line 187
    iget-object p0, p0, Lcom/android/server/wm/WindowContextListenerController;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public registerWindowContainerListener(Lcom/android/server/wm/WindowProcessController;Landroid/os/IBinder;Lcom/android/server/wm/WindowContainer;ILandroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    .line 79
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/WindowContextListenerController;->registerWindowContainerListener(Lcom/android/server/wm/WindowProcessController;Landroid/os/IBinder;Lcom/android/server/wm/WindowContainer;ILandroid/os/Bundle;Z)V

    return-void
.end method

.method public registerWindowContainerListener(Lcom/android/server/wm/WindowProcessController;Landroid/os/IBinder;Lcom/android/server/wm/WindowContainer;ILandroid/os/Bundle;Z)V
    .locals 9

    .line 103
    iget-object v0, p0, Lcom/android/server/wm/WindowContextListenerController;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;

    if-nez v0, :cond_0

    .line 105
    new-instance v1, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v8}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;-><init>(Lcom/android/server/wm/WindowContextListenerController;Lcom/android/server/wm/WindowProcessController;Landroid/os/IBinder;Lcom/android/server/wm/WindowContainer;ILandroid/os/Bundle;Lcom/android/server/wm/WindowContextListenerController-IA;)V

    .line 107
    invoke-static {v1, p6}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->-$$Nest$mregister(Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;Z)V

    return-void

    :cond_0
    move-object v2, p0

    move-object v4, p2

    move-object v5, p3

    .line 109
    invoke-virtual {v2, v4, v5}, Lcom/android/server/wm/WindowContextListenerController;->updateContainerForWindowContextListener(Landroid/os/IBinder;Lcom/android/server/wm/WindowContainer;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WindowContextListenerController{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 208
    const-string v1, "mListeners=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    iget-object v1, p0, Lcom/android/server/wm/WindowContextListenerController;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 212
    iget-object v3, p0, Lcom/android/server/wm/WindowContextListenerController;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v1, -0x1

    if-eq v2, v3, :cond_0

    .line 214
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 217
    :cond_1
    const-string p0, "]}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public unregisterWindowContainerListener(Landroid/os/IBinder;)V
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/android/server/wm/WindowContextListenerController;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;

    if-nez p0, :cond_0

    goto :goto_0

    .line 133
    :cond_0
    invoke-static {p0}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->-$$Nest$munregister(Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;)V

    .line 134
    invoke-static {p0}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->-$$Nest$fgetmDeathRecipient(Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;)Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl$DeathRecipient;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 135
    invoke-static {p0}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->-$$Nest$fgetmDeathRecipient(Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;)Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl$DeathRecipient;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl$DeathRecipient;->unlinkToDeath()V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateContainerForWindowContextListener(Landroid/os/IBinder;Lcom/android/server/wm/WindowContainer;)V
    .locals 1

    .line 118
    iget-object p0, p0, Lcom/android/server/wm/WindowContextListenerController;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;

    if-eqz p0, :cond_0

    .line 122
    invoke-static {p0, p2}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->-$$Nest$mupdateContainer(Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;Lcom/android/server/wm/WindowContainer;)V

    return-void

    .line 120
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can\'t find listener for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
