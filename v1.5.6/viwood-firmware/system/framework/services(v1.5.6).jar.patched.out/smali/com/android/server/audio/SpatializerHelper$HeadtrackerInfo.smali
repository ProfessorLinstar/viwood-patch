.class public Lcom/android/server/audio/SpatializerHelper$HeadtrackerInfo;
.super Ljava/lang/Object;
.source "SpatializerHelper.java"


# instance fields
.field public final mVersion:I


# direct methods
.method public constructor <init>(Landroid/hardware/Sensor;)V
    .locals 0

    .line 1897
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1898
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getVersion()I

    move-result p1

    iput p1, p0, Lcom/android/server/audio/SpatializerHelper$HeadtrackerInfo;->mVersion:I

    return-void
.end method


# virtual methods
.method public getMajorVersion()I
    .locals 1

    .line 1901
    iget p0, p0, Lcom/android/server/audio/SpatializerHelper$HeadtrackerInfo;->mVersion:I

    const/high16 v0, -0x1000000

    and-int/2addr p0, v0

    shr-int/lit8 p0, p0, 0x18

    return p0
.end method
