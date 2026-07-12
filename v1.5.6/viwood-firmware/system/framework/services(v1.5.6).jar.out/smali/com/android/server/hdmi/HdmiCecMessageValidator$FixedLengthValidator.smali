.class public Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;
.super Ljava/lang/Object;
.source "HdmiCecMessageValidator.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;


# instance fields
.field public final mLength:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 365
    iput p1, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;->mLength:I

    return-void
.end method


# virtual methods
.method public isValid([B)I
    .locals 0

    .line 372
    array-length p1, p1

    iget p0, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;->mLength:I

    if-ge p1, p0, :cond_0

    const/4 p0, 0x4

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
