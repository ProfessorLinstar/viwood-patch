.class public final Lcom/android/server/policy/ModifierShortcutManager$RoleBookmark;
.super Lcom/android/server/policy/ModifierShortcutManager$Bookmark;
.source "ModifierShortcutManager.java"


# instance fields
.field public final mRole:Ljava/lang/String;


# direct methods
.method public constructor <init>(CZLjava/lang/String;)V
    .locals 0

    .line 1147
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/ModifierShortcutManager$Bookmark;-><init>(CZ)V

    .line 1148
    iput-object p3, p0, Lcom/android/server/policy/ModifierShortcutManager$RoleBookmark;->mRole:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1

    .line 1158
    iget-object v0, p0, Lcom/android/server/policy/ModifierShortcutManager$Bookmark;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    return-object v0

    .line 1161
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/ModifierShortcutManager$RoleBookmark;->mRole:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/server/policy/ModifierShortcutManager;->-$$Nest$smgetRoleLaunchIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/policy/ModifierShortcutManager$Bookmark;->mIntent:Landroid/content/Intent;

    return-object p1
.end method

.method public getRole()Ljava/lang/String;
    .locals 0

    .line 1152
    iget-object p0, p0, Lcom/android/server/policy/ModifierShortcutManager$RoleBookmark;->mRole:Ljava/lang/String;

    return-object p0
.end method
