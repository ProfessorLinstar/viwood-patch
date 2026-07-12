.class public Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedGenericArgs;
.super Ljava/lang/Object;
.source "HdmiCecAtomWriter.java"


# instance fields
.field public final mDestinationLogicalAddress:I

.field public final mDirection:I

.field public final mInitiatorLogicalAddress:I

.field public final mOpcode:I

.field public final mSendMessageResult:I

.field public final mUid:I


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecAtomWriter;IIIIII)V
    .locals 0

    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    iput p2, p0, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedGenericArgs;->mUid:I

    .line 317
    iput p3, p0, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedGenericArgs;->mDirection:I

    .line 318
    iput p4, p0, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedGenericArgs;->mInitiatorLogicalAddress:I

    .line 319
    iput p5, p0, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedGenericArgs;->mDestinationLogicalAddress:I

    .line 320
    iput p6, p0, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedGenericArgs;->mOpcode:I

    .line 321
    iput p7, p0, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedGenericArgs;->mSendMessageResult:I

    return-void
.end method
