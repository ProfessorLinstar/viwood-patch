.class public final Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;
.super Ljava/lang/Record;
.source "BackgroundLaunchProcessController.java"


# annotations
.annotation system Ldalvik/annotation/Record;
    componentAnnotationVisibilities = {
        {},
        {},
        {},
        {}
    }
    componentAnnotations = {
        {},
        {},
        {},
        {}
    }
    componentNames = {
        "isCheckingForFgsStart",
        "checkVisibility",
        "checkOtherExemptions",
        "gracePeriod"
    }
    componentSignatures = {
        null,
        null,
        null,
        null
    }
    componentTypes = {
        Z,
        Z,
        Z,
        J
    }
.end annotation


# instance fields
.field public final checkOtherExemptions:Z

.field public final checkVisibility:Z

.field public final gracePeriod:J

.field public final isCheckingForFgsStart:Z


# direct methods
.method public static bridge synthetic -$$Nest$fgetcheckOtherExemptions(Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;->checkOtherExemptions:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetcheckVisibility(Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;->checkVisibility:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetgracePeriod(Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;->gracePeriod:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetisCheckingForFgsStart(Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;->isCheckingForFgsStart:Z

    return p0
.end method

.method public constructor <init>(ZZZJ)V
    .locals 0

    .line 100
    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    iput-boolean p1, p0, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;->isCheckingForFgsStart:Z

    iput-boolean p2, p0, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;->checkVisibility:Z

    iput-boolean p3, p0, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;->checkOtherExemptions:Z

    iput-wide p4, p0, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;->gracePeriod:J

    return-void
.end method


# virtual methods
.method public final synthetic $record$equals(Ljava/lang/Object;)Z
    .locals 2

    .line 0
    instance-of v0, p1, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;

    iget-boolean v0, p0, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;->isCheckingForFgsStart:Z

    iget-boolean v1, p1, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;->isCheckingForFgsStart:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;->checkVisibility:Z

    iget-boolean v1, p1, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;->checkVisibility:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;->checkOtherExemptions:Z

    iget-boolean v1, p1, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;->checkOtherExemptions:Z

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;->gracePeriod:J

    iget-wide p0, p1, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;->gracePeriod:J

    cmp-long p0, v0, p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic $record$getFieldsAsObjects()[Ljava/lang/Object;
    .locals 5

    .line 0
    iget-boolean v0, p0, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;->isCheckingForFgsStart:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;->checkVisibility:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;->checkOtherExemptions:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;->gracePeriod:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    const/4 v0, 0x3

    aput-object p0, v3, v0

    return-object v3
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    .line 100
    invoke-virtual {p0, p1}, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;->$record$equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 5

    .line 100
    iget-boolean v0, p0, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;->isCheckingForFgsStart:Z

    iget-boolean v1, p0, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;->checkVisibility:Z

    iget-boolean v2, p0, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;->checkOtherExemptions:Z

    iget-wide v3, p0, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;->gracePeriod:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration$$ExternalSyntheticRecord0;->m(ZZZJ)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 100
    invoke-virtual {p0}, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object p0

    const-class v0, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;

    const-string v1, "isCheckingForFgsStart;checkVisibility;checkOtherExemptions;gracePeriod"

    invoke-static {p0, v0, v1}, Lcom/android/server/BinaryTransparencyService$Digest$$ExternalSyntheticRecord1;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
