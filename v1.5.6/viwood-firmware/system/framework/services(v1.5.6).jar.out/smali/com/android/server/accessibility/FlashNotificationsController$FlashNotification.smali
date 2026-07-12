.class public Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;
.super Ljava/lang/Object;
.source "FlashNotificationsController.java"


# instance fields
.field public final mColor:I

.field public final mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field public final mForceStartScreenFlash:Z

.field public final mOffDuration:I

.field public final mOnDuration:I

.field public mRepeat:I

.field public final mTag:Ljava/lang/String;

.field public final mToken:Landroid/os/IBinder;

.field public final mType:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmColor(Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mColor:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmForceStartScreenFlash(Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mForceStartScreenFlash:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmOffDuration(Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mOffDuration:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmOnDuration(Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mOnDuration:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRepeat(Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mRepeat:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTag(Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmType(Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mType:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmRepeat(Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mRepeat:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 688
    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;-><init>(Ljava/lang/String;IILandroid/os/IBinder;Landroid/os/IBinder$DeathRecipient;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILandroid/os/IBinder;Landroid/os/IBinder$DeathRecipient;)V
    .locals 0

    .line 692
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 693
    iput p2, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mType:I

    .line 694
    iput-object p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mTag:Ljava/lang/String;

    .line 695
    iput p3, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mColor:I

    .line 696
    iput-object p4, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mToken:Landroid/os/IBinder;

    .line 697
    iput-object p5, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 p1, 0x2

    const/4 p3, 0x0

    if-eq p2, p1, :cond_1

    const/4 p4, 0x3

    if-eq p2, p4, :cond_0

    const/16 p2, 0x15e

    .line 714
    iput p2, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mOnDuration:I

    const/16 p2, 0xfa

    .line 715
    iput p2, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mOffDuration:I

    .line 716
    iput p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mRepeat:I

    .line 717
    iput-boolean p3, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mForceStartScreenFlash:Z

    return-void

    :cond_0
    const/16 p1, 0x1388

    .line 707
    iput p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mOnDuration:I

    const/16 p1, 0x3e8

    .line 708
    iput p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mOffDuration:I

    const/4 p1, 0x1

    .line 709
    iput p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mRepeat:I

    .line 710
    iput-boolean p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mForceStartScreenFlash:Z

    return-void

    :cond_1
    const/16 p1, 0x2bc

    .line 701
    iput p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mOnDuration:I

    .line 702
    iput p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mOffDuration:I

    .line 703
    iput p3, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mRepeat:I

    .line 704
    iput-boolean p3, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mForceStartScreenFlash:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IILandroid/os/IBinder;Landroid/os/IBinder$DeathRecipient;Lcom/android/server/accessibility/FlashNotificationsController-IA;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;-><init>(Ljava/lang/String;IILandroid/os/IBinder;Landroid/os/IBinder$DeathRecipient;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IILcom/android/server/accessibility/FlashNotificationsController-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;-><init>(Ljava/lang/String;II)V

    return-void
.end method


# virtual methods
.method public tryLinkToDeath()Z
    .locals 3

    .line 723
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mToken:Landroid/os/IBinder;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    if-nez p0, :cond_0

    goto :goto_0

    .line 726
    :cond_0
    :try_start_0
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 729
    const-string v0, "FlashNotifController"

    const-string v2, "RemoteException"

    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return v1
.end method

.method public tryUnlinkToDeath()Z
    .locals 2

    .line 735
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mToken:Landroid/os/IBinder;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    if-nez p0, :cond_0

    goto :goto_0

    .line 737
    :cond_0
    :try_start_0
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_1
    :goto_0
    return v1
.end method
