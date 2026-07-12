.class public Lcom/android/server/wm/PageSizeMismatchDialog;
.super Lcom/android/server/wm/AppWarnings$BaseDialog;
.source "PageSizeMismatchDialog.java"


# direct methods
.method public static synthetic $r8$lambda$fUlZjXwRjA-OJayvWA83KQUpQuo(Lcom/android/server/wm/PageSizeMismatchDialog;Lcom/android/server/wm/AppWarnings;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/PageSizeMismatchDialog;->lambda$new$0(Lcom/android/server/wm/AppWarnings;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/AppWarnings;Landroid/content/Context;Landroid/content/pm/ApplicationInfo;ILjava/lang/String;)V
    .locals 2

    .line 50
    iget-object v0, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0, p4}, Lcom/android/server/wm/AppWarnings$BaseDialog;-><init>(Lcom/android/server/wm/AppWarnings;Landroid/content/Context;Ljava/lang/String;I)V

    .line 52
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p4

    const/high16 v0, 0x447a0000    # 1000.0f

    const/4 v1, 0x5

    .line 54
    invoke-virtual {p3, p4, v0, v1}, Landroid/content/pm/ApplicationInfo;->loadSafeLabel(Landroid/content/pm/PackageManager;FI)Ljava/lang/CharSequence;

    move-result-object p3

    .line 60
    new-instance p4, Landroid/app/AlertDialog$Builder;

    invoke-direct {p4, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance p2, Lcom/android/server/wm/PageSizeMismatchDialog$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p1}, Lcom/android/server/wm/PageSizeMismatchDialog$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/PageSizeMismatchDialog;Lcom/android/server/wm/AppWarnings;)V

    const p1, 0x104000a

    .line 62
    invoke-virtual {p4, p1, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/16 p2, 0x3f

    .line 67
    invoke-static {p5, p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 68
    invoke-virtual {p1, p3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 70
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/AppWarnings$BaseDialog;->mDialog:Landroid/app/AlertDialog;

    .line 71
    invoke-virtual {p1}, Landroid/app/AlertDialog;->create()V

    .line 73
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings$BaseDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 p1, 0x7f6

    .line 74
    invoke-virtual {p0, p1}, Landroid/view/Window;->setType(I)V

    return-void
.end method

.method private synthetic lambda$new$0(Lcom/android/server/wm/AppWarnings;Landroid/content/DialogInterface;I)V
    .locals 1

    .line 63
    iget p2, p0, Lcom/android/server/wm/AppWarnings$BaseDialog;->mUserId:I

    iget-object p0, p0, Lcom/android/server/wm/AppWarnings$BaseDialog;->mPackageName:Ljava/lang/String;

    const/16 p3, 0x10

    const/4 v0, 0x1

    invoke-virtual {p1, p2, p0, p3, v0}, Lcom/android/server/wm/AppWarnings;->setPackageFlag(ILjava/lang/String;IZ)V

    return-void
.end method


# virtual methods
.method public show()V
    .locals 1

    .line 79
    invoke-super {p0}, Lcom/android/server/wm/AppWarnings$BaseDialog;->show()V

    .line 81
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings$BaseDialog;->mDialog:Landroid/app/AlertDialog;

    const v0, 0x102000b

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 82
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method
