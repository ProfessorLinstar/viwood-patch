.class public Lcom/android/server/am/AppRestrictionController$BgHandler;
.super Landroid/os/Handler;
.source "AppRestrictionController.java"


# instance fields
.field public final mInjector:Lcom/android/server/am/AppRestrictionController$Injector;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/android/server/am/AppRestrictionController$Injector;)V
    .locals 0

    .line 3178
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3179
    iput-object p2, p0, Lcom/android/server/am/AppRestrictionController$BgHandler;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 3184
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$BgHandler;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    .line 3185
    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppRestrictionController()Lcom/android/server/am/AppRestrictionController;

    move-result-object p0

    .line 3186
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    return-void

    .line 3223
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->persistToXml(I)V

    return-void

    .line 3220
    :pswitch_1
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    invoke-virtual {p0, v2}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->loadFromXml(Z)V

    return-void

    .line 3209
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/AppRestrictionController;->handleCancelRequestBgRestricted(Ljava/lang/String;I)V

    return-void

    .line 3212
    :pswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/AppRestrictionController;->handleUidProcStateChanged(II)V

    return-void

    .line 3216
    :pswitch_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    if-ne v3, v2, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/AppRestrictionController;->handleUidInactive(IZ)V

    .line 3217
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRestrictionController;->handleUidGone(I)V

    return-void

    .line 3206
    :pswitch_5
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRestrictionController;->handleUidActive(I)V

    return-void

    .line 3203
    :pswitch_6
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    if-ne p1, v2, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/AppRestrictionController;->handleUidInactive(IZ)V

    return-void

    .line 3200
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/AppRestrictionController;->handleRequestBgRestricted(Ljava/lang/String;I)V

    return-void

    .line 3197
    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, v0, p1}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$monUserInteractionStarted(Lcom/android/server/am/AppRestrictionController;Ljava/lang/String;I)V

    return-void

    .line 3194
    :pswitch_9
    iget v0, p1, Landroid/os/Message;->arg2:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, v0, v1, p1}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$mhandleAppStandbyBucketChanged(Lcom/android/server/am/AppRestrictionController;ILjava/lang/String;I)V

    return-void

    .line 3191
    :pswitch_a
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, v0, v1, p1}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$mdispatchAppRestrictionLevelChanges(Lcom/android/server/am/AppRestrictionController;ILjava/lang/String;I)V

    return-void

    .line 3188
    :pswitch_b
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget p1, p1, Landroid/os/Message;->arg2:I

    if-ne p1, v2, :cond_2

    move v1, v2

    :cond_2
    invoke-static {p0, v0, v3, v1}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$mhandleBackgroundRestrictionChanged(Lcom/android/server/am/AppRestrictionController;ILjava/lang/String;Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
