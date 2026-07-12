.class public Lcom/android/server/am/AppRestrictionController$TrackerInfo;
.super Ljava/lang/Object;
.source "AppRestrictionController.java"


# instance fields
.field public final mInfo:[B

.field public final mType:I


# direct methods
.method public constructor <init>(Lcom/android/server/am/AppRestrictionController;)V
    .locals 0

    .line 1420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 1421
    iput p1, p0, Lcom/android/server/am/AppRestrictionController$TrackerInfo;->mType:I

    const/4 p1, 0x0

    .line 1422
    iput-object p1, p0, Lcom/android/server/am/AppRestrictionController$TrackerInfo;->mInfo:[B

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/AppRestrictionController;I[B)V
    .locals 0

    .line 1425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1426
    iput p2, p0, Lcom/android/server/am/AppRestrictionController$TrackerInfo;->mType:I

    .line 1427
    iput-object p3, p0, Lcom/android/server/am/AppRestrictionController$TrackerInfo;->mInfo:[B

    return-void
.end method
