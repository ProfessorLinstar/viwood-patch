.class public Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;
.super Ljava/lang/Object;
.source "OomAdjusterModernImpl.java"


# instance fields
.field public mApp:Lcom/android/server/am/ProcessRecord;

.field public mCachedAdj:I

.field public mFullUpdate:Z

.field public mNow:J

.field public mOomAdjReason:I

.field public mTopApp:Lcom/android/server/am/ProcessRecord;

.field public mUids:Lcom/android/server/am/ActiveUids;


# direct methods
.method public constructor <init>(Lcom/android/server/am/OomAdjusterModernImpl;)V
    .locals 0

    .line 603
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/OomAdjusterModernImpl;Lcom/android/server/am/OomAdjusterModernImpl-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;-><init>(Lcom/android/server/am/OomAdjusterModernImpl;)V

    return-void
.end method


# virtual methods
.method public update(Lcom/android/server/am/ProcessRecord;JIILcom/android/server/am/ActiveUids;Z)V
    .locals 0

    .line 614
    iput-object p1, p0, Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;->mTopApp:Lcom/android/server/am/ProcessRecord;

    .line 615
    iput-wide p2, p0, Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;->mNow:J

    .line 616
    iput p4, p0, Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;->mCachedAdj:I

    .line 617
    iput p5, p0, Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;->mOomAdjReason:I

    .line 618
    iput-object p6, p0, Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;->mUids:Lcom/android/server/am/ActiveUids;

    .line 619
    iput-boolean p7, p0, Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;->mFullUpdate:Z

    return-void
.end method
