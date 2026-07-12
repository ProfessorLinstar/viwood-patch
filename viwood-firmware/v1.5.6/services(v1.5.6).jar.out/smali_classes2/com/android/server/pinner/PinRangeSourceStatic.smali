.class public Lcom/android/server/pinner/PinRangeSourceStatic;
.super Lcom/android/server/pinner/PinRangeSource;
.source "PinRangeSourceStatic.java"


# instance fields
.field public mDone:Z

.field public final mPinLength:I

.field public final mPinStart:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 24
    invoke-direct {p0}, Lcom/android/server/pinner/PinRangeSource;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/android/server/pinner/PinRangeSourceStatic;->mDone:Z

    .line 25
    iput p1, p0, Lcom/android/server/pinner/PinRangeSourceStatic;->mPinStart:I

    .line 26
    iput p2, p0, Lcom/android/server/pinner/PinRangeSourceStatic;->mPinLength:I

    return-void
.end method


# virtual methods
.method public read(Lcom/android/server/pinner/PinnerService$PinRange;)Z
    .locals 1

    .line 31
    iget v0, p0, Lcom/android/server/pinner/PinRangeSourceStatic;->mPinStart:I

    iput v0, p1, Lcom/android/server/pinner/PinnerService$PinRange;->start:I

    .line 32
    iget v0, p0, Lcom/android/server/pinner/PinRangeSourceStatic;->mPinLength:I

    iput v0, p1, Lcom/android/server/pinner/PinnerService$PinRange;->length:I

    .line 33
    iget-boolean p1, p0, Lcom/android/server/pinner/PinRangeSourceStatic;->mDone:Z

    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lcom/android/server/pinner/PinRangeSourceStatic;->mDone:Z

    xor-int/lit8 p0, p1, 0x1

    return p0
.end method
