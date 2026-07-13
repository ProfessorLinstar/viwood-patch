.class public Lcom/android/server/pm/PackageMetrics$ComponentStateMetrics;
.super Ljava/lang/Object;
.source "PackageMetrics.java"


# instance fields
.field public mCallingUid:I

.field public mClassName:Ljava/lang/String;

.field public mComponentNewState:I

.field public mComponentOldState:I

.field public mIsForWholeApp:Z

.field public mPackageName:Ljava/lang/String;

.field public mUid:I


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManager$ComponentEnabledSetting;III)V
    .locals 0

    .line 430
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 431
    iput p2, p0, Lcom/android/server/pm/PackageMetrics$ComponentStateMetrics;->mUid:I

    .line 432
    iput p3, p0, Lcom/android/server/pm/PackageMetrics$ComponentStateMetrics;->mComponentOldState:I

    .line 433
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getEnabledState()I

    move-result p2

    iput p2, p0, Lcom/android/server/pm/PackageMetrics$ComponentStateMetrics;->mComponentNewState:I

    .line 434
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->isComponent()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    iput-boolean p2, p0, Lcom/android/server/pm/PackageMetrics$ComponentStateMetrics;->mIsForWholeApp:Z

    .line 435
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getPackageName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/pm/PackageMetrics$ComponentStateMetrics;->mPackageName:Ljava/lang/String;

    .line 436
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getClassName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/PackageMetrics$ComponentStateMetrics;->mClassName:Ljava/lang/String;

    .line 437
    iput p4, p0, Lcom/android/server/pm/PackageMetrics$ComponentStateMetrics;->mCallingUid:I

    return-void
.end method


# virtual methods
.method public isLauncherActivity(Lcom/android/server/pm/Computer;I)Z
    .locals 9

    .line 441
    iget-boolean v0, p0, Lcom/android/server/pm/PackageMetrics$ComponentStateMetrics;->mIsForWholeApp:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 445
    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 446
    const-string v0, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 447
    iget-object v0, p0, Lcom/android/server/pm/PackageMetrics$ComponentStateMetrics;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-wide/32 v5, 0xc0240

    const/16 v7, 0x3e8

    const/4 v4, 0x0

    move-object v2, p1

    move v8, p2

    .line 448
    invoke-interface/range {v2 .. v8}, Lcom/android/server/pm/Computer;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JII)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 453
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    goto :goto_0

    :cond_1
    move p2, v1

    :goto_0
    move v0, v1

    :goto_1
    if-ge v0, p2, :cond_3

    .line 455
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 456
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0, v2}, Lcom/android/server/pm/PackageMetrics$ComponentStateMetrics;->isSameComponent(Landroid/content/pm/ActivityInfo;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return v1
.end method

.method public final isSameComponent(Landroid/content/pm/ActivityInfo;)Z
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 467
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/pm/PackageMetrics$ComponentStateMetrics;->mIsForWholeApp:Z

    if-eqz v0, :cond_1

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/pm/PackageMetrics$ComponentStateMetrics;->mPackageName:Ljava/lang/String;

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    .line 468
    :cond_1
    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/server/pm/PackageMetrics$ComponentStateMetrics;->mPackageName:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/pm/PackageMetrics$ComponentStateMetrics;->mClassName:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
