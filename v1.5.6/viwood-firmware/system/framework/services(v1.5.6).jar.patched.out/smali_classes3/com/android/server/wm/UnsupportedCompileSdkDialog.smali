.class public Lcom/android/server/wm/UnsupportedCompileSdkDialog;
.super Lcom/android/server/wm/AppWarnings$BaseDialog;
.source "UnsupportedCompileSdkDialog.java"


# direct methods
.method public static synthetic $r8$lambda$VSqa4K4_ZC3Z_WdPqeZDHSWgepE(Landroid/content/Context;Landroid/content/Intent;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 55
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZdEyLs1mAPOe6LWZSOQhguaGw6c(Lcom/android/server/wm/UnsupportedCompileSdkDialog;Lcom/android/server/wm/AppWarnings;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/UnsupportedCompileSdkDialog;->lambda$new$1(Lcom/android/server/wm/AppWarnings;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/AppWarnings;Landroid/content/Context;Landroid/content/pm/ApplicationInfo;I)V
    .locals 3

    .line 36
    iget-object v0, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0, p4}, Lcom/android/server/wm/AppWarnings$BaseDialog;-><init>(Lcom/android/server/wm/AppWarnings;Landroid/content/Context;Ljava/lang/String;I)V

    .line 38
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p4

    const/high16 v0, 0x447a0000    # 1000.0f

    const/4 v1, 0x5

    .line 39
    invoke-virtual {p3, p4, v0, v1}, Landroid/content/pm/ApplicationInfo;->loadSafeLabel(Landroid/content/pm/PackageManager;FI)Ljava/lang/CharSequence;

    move-result-object p4

    const v0, 0x1040a6c

    .line 43
    filled-new-array {p4}, [Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p2, v0, p4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    .line 46
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x104000a

    const/4 v2, 0x0

    .line 47
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 48
    invoke-virtual {v0, p4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p4

    const v0, 0x1090180

    .line 49
    invoke-virtual {p4, v0}, Landroid/app/AlertDialog$Builder;->setView(I)Landroid/app/AlertDialog$Builder;

    move-result-object p4

    .line 52
    iget-object p3, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p2, p3}, Lcom/android/server/utils/AppInstallerUtil;->createIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 54
    new-instance v0, Lcom/android/server/wm/UnsupportedCompileSdkDialog$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2, p3}, Lcom/android/server/wm/UnsupportedCompileSdkDialog$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    const p2, 0x1040a6b

    invoke-virtual {p4, p2, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 59
    :cond_0
    invoke-virtual {p4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/wm/AppWarnings$BaseDialog;->mDialog:Landroid/app/AlertDialog;

    .line 60
    invoke-virtual {p2}, Landroid/app/AlertDialog;->create()V

    .line 62
    iget-object p2, p0, Lcom/android/server/wm/AppWarnings$BaseDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    const/16 p3, 0x7d2

    .line 63
    invoke-virtual {p2, p3}, Landroid/view/Window;->setType(I)V

    .line 66
    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    const-string p3, "UnsupportedCompileSdkDialog"

    invoke-virtual {p2, p3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 68
    iget-object p2, p0, Lcom/android/server/wm/AppWarnings$BaseDialog;->mDialog:Landroid/app/AlertDialog;

    const p3, 0x102021f

    invoke-virtual {p2, p3}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    const/4 p3, 0x1

    .line 69
    invoke-virtual {p2, p3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 70
    new-instance p3, Lcom/android/server/wm/UnsupportedCompileSdkDialog$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0, p1}, Lcom/android/server/wm/UnsupportedCompileSdkDialog$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/UnsupportedCompileSdkDialog;Lcom/android/server/wm/AppWarnings;)V

    invoke-virtual {p2, p3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method


# virtual methods
.method public final synthetic lambda$new$1(Lcom/android/server/wm/AppWarnings;Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 70
    iget p2, p0, Lcom/android/server/wm/AppWarnings$BaseDialog;->mUserId:I

    iget-object p0, p0, Lcom/android/server/wm/AppWarnings$BaseDialog;->mPackageName:Ljava/lang/String;

    xor-int/lit8 p3, p3, 0x1

    const/4 v0, 0x2

    invoke-virtual {p1, p2, p0, v0, p3}, Lcom/android/server/wm/AppWarnings;->setPackageFlag(ILjava/lang/String;IZ)V

    return-void
.end method
