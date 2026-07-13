.class public abstract Lcom/android/server/security/AttestationVerificationManagerService$DumpData;
.super Ljava/lang/Object;
.source "AttestationVerificationManagerService.java"


# instance fields
.field public mEventNumber:I

.field public mEventTimeMs:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 187
    iput v0, p0, Lcom/android/server/security/AttestationVerificationManagerService$DumpData;->mEventNumber:I

    const-wide/16 v0, -0x1

    .line 188
    iput-wide v0, p0, Lcom/android/server/security/AttestationVerificationManagerService$DumpData;->mEventTimeMs:J

    return-void
.end method


# virtual methods
.method public abstract dumpTo(Landroid/util/IndentingPrintWriter;)V
.end method
