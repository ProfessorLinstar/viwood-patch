.class public Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;
.super Ljava/lang/Object;
.source "GnssConfiguration.java"


# static fields
.field public static final AIDL_INTERFACE:I = 0x3


# instance fields
.field public final mMajor:I

.field public final mMinor:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput p1, p0, Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;->mMajor:I

    .line 106
    iput p2, p0, Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;->mMinor:I

    return-void
.end method
