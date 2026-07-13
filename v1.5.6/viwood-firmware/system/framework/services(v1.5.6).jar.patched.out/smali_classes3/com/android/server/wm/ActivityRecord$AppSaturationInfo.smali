.class public Lcom/android/server/wm/ActivityRecord$AppSaturationInfo;
.super Ljava/lang/Object;
.source "ActivityRecord.java"


# instance fields
.field public mMatrix:[F

.field public mTranslation:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    .line 9368
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord$AppSaturationInfo;->mMatrix:[F

    const/4 v0, 0x3

    .line 9369
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord$AppSaturationInfo;->mTranslation:[F

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityRecord-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecord$AppSaturationInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public setSaturation([F[F)V
    .locals 3

    .line 9372
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord$AppSaturationInfo;->mMatrix:[F

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9373
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord$AppSaturationInfo;->mTranslation:[F

    array-length p1, p0

    invoke-static {p2, v2, p0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method
