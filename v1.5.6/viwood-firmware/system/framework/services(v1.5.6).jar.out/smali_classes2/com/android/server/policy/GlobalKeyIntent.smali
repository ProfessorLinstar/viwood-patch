.class public final Lcom/android/server/policy/GlobalKeyIntent;
.super Ljava/lang/Object;
.source "GlobalKeyIntent.java"


# instance fields
.field public final mBeganFromNonInteractive:Z

.field public final mComponentName:Landroid/content/ComponentName;

.field public final mKeyEvent:Landroid/view/KeyEvent;


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;Landroid/view/KeyEvent;Z)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/server/policy/GlobalKeyIntent;->mComponentName:Landroid/content/ComponentName;

    .line 39
    new-instance p1, Landroid/view/KeyEvent;

    invoke-direct {p1, p2}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    iput-object p1, p0, Lcom/android/server/policy/GlobalKeyIntent;->mKeyEvent:Landroid/view/KeyEvent;

    .line 40
    iput-boolean p3, p0, Lcom/android/server/policy/GlobalKeyIntent;->mBeganFromNonInteractive:Z

    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    .line 44
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GLOBAL_BUTTON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/policy/GlobalKeyIntent;->mComponentName:Landroid/content/ComponentName;

    .line 45
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10000000

    .line 46
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.KEY_EVENT"

    iget-object v2, p0, Lcom/android/server/policy/GlobalKeyIntent;->mKeyEvent:Landroid/view/KeyEvent;

    .line 47
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EXTRA_BEGAN_FROM_NON_INTERACTIVE"

    iget-boolean p0, p0, Lcom/android/server/policy/GlobalKeyIntent;->mBeganFromNonInteractive:Z

    .line 48
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method
