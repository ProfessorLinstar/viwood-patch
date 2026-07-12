.class public final Lcom/android/server/policy/ModifierShortcutManager$CategoryBookmark;
.super Lcom/android/server/policy/ModifierShortcutManager$Bookmark;
.source "ModifierShortcutManager.java"


# instance fields
.field public final mCategory:Ljava/lang/String;


# direct methods
.method public constructor <init>(CZLjava/lang/String;)V
    .locals 0

    .line 1170
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/ModifierShortcutManager$Bookmark;-><init>(CZ)V

    .line 1171
    iput-object p3, p0, Lcom/android/server/policy/ModifierShortcutManager$CategoryBookmark;->mCategory:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1

    .line 1177
    iget-object p1, p0, Lcom/android/server/policy/ModifierShortcutManager$Bookmark;->mIntent:Landroid/content/Intent;

    if-eqz p1, :cond_0

    return-object p1

    .line 1181
    :cond_0
    const-string p1, "android.intent.action.MAIN"

    iget-object v0, p0, Lcom/android/server/policy/ModifierShortcutManager$CategoryBookmark;->mCategory:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/content/Intent;->makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/policy/ModifierShortcutManager$Bookmark;->mIntent:Landroid/content/Intent;

    return-object p1
.end method
