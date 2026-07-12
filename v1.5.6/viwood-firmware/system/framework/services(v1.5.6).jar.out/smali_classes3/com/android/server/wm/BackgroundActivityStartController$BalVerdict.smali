.class public Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
.super Ljava/lang/Object;
.source "BackgroundActivityStartController.java"


# static fields
.field public static final ALLOW_BY_DEFAULT:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

.field public static final ALLOW_PRIVILEGED:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

.field public static final BLOCK:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;


# instance fields
.field public mBasedOnRealCaller:Z

.field public final mCode:I

.field public final mMessage:Ljava/lang/String;

.field public mOnlyCreatorAllows:Z

.field public mProcessInfo:Ljava/lang/String;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmBasedOnRealCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->mBasedOnRealCaller:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCode(Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->mCode:I

    return p0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 645
    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    const/16 v1, 0x7f

    const-string v2, "Blocked"

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->BLOCK:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    .line 646
    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    const/4 v1, 0x1

    const-string v2, "Default"

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->ALLOW_BY_DEFAULT:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    .line 649
    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    const/4 v1, 0x2

    const-string v2, "PRIVILEGED"

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->ALLOW_PRIVILEGED:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 660
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 661
    iput p1, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->mCode:I

    .line 662
    iput-object p2, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->mMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public allows()Z
    .locals 0

    .line 678
    invoke-virtual {p0}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->blocks()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public blocks()Z
    .locals 1

    .line 674
    iget p0, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->mCode:I

    const/16 v0, 0x7f

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getCode()I
    .locals 2

    .line 729
    iget-boolean v0, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->mBasedOnRealCaller:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->mCode:I

    const/16 v1, 0x7f

    if-eq v0, v1, :cond_0

    const/4 p0, 0x5

    return p0

    .line 733
    :cond_0
    iget p0, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->mCode:I

    return p0
.end method

.method public getRawCode()I
    .locals 0

    .line 725
    iget p0, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->mCode:I

    return p0
.end method

.method public onlyCreatorAllows()Z
    .locals 0

    .line 690
    iget-boolean p0, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->mOnlyCreatorAllows:Z

    return p0
.end method

.method public setBasedOnRealCaller()Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .locals 1

    .line 695
    sget-object v0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->BLOCK:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    if-ne p0, v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    .line 699
    iput-boolean v0, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->mBasedOnRealCaller:Z

    return-object p0
.end method

.method public setOnlyCreatorAllows(Z)V
    .locals 1

    .line 682
    sget-object v0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->BLOCK:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    if-ne p0, v0, :cond_0

    return-void

    .line 686
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->mOnlyCreatorAllows:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 704
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 705
    iget v1, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->mCode:I

    invoke-static {v1}, Lcom/android/server/wm/BackgroundActivityStartController;->balCodeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 706
    sget-object v1, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->BLOCK:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    if-eq p0, v1, :cond_3

    .line 707
    iget-boolean v1, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->mOnlyCreatorAllows:Z

    if-eqz v1, :cond_0

    .line 708
    const-string v1, " [onlyCaller]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 709
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->mBasedOnRealCaller:Z

    if-eqz v1, :cond_1

    .line 710
    const-string v1, " [realCaller]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 712
    :cond_1
    :goto_0
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ACTIVITY_STARTS:Z

    if-eqz v1, :cond_3

    .line 713
    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 714
    iget-object v1, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->mProcessInfo:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 715
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 716
    iget-object p0, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->mProcessInfo:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 718
    :cond_2
    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 721
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public withProcessInfo(Ljava/lang/String;Lcom/android/server/wm/WindowProcessController;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .locals 1

    .line 666
    sget-object v0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->BLOCK:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->ALLOW_BY_DEFAULT:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->ALLOW_PRIVILEGED:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 669
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " (uid="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p2, Lcom/android/server/wm/WindowProcessController;->mUid:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",pid="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->mProcessInfo:Ljava/lang/String;

    :cond_1
    :goto_0
    return-object p0
.end method
