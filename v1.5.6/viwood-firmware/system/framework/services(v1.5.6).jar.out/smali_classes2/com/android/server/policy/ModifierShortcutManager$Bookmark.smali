.class public abstract Lcom/android/server/policy/ModifierShortcutManager$Bookmark;
.super Ljava/lang/Object;
.source "ModifierShortcutManager.java"


# instance fields
.field public mIntent:Landroid/content/Intent;

.field public final mShift:Z

.field public final mShortcutChar:C


# direct methods
.method public constructor <init>(CZ)V
    .locals 0

    .line 1122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1123
    iput-char p1, p0, Lcom/android/server/policy/ModifierShortcutManager$Bookmark;->mShortcutChar:C

    .line 1124
    iput-boolean p2, p0, Lcom/android/server/policy/ModifierShortcutManager$Bookmark;->mShift:Z

    return-void
.end method


# virtual methods
.method public clearIntent()V
    .locals 1

    const/4 v0, 0x0

    .line 1138
    iput-object v0, p0, Lcom/android/server/policy/ModifierShortcutManager$Bookmark;->mIntent:Landroid/content/Intent;

    return-void
.end method

.method public abstract getIntent(Landroid/content/Context;)Landroid/content/Intent;
.end method

.method public getShortcutChar()C
    .locals 0

    .line 1128
    iget-char p0, p0, Lcom/android/server/policy/ModifierShortcutManager$Bookmark;->mShortcutChar:C

    return p0
.end method

.method public isShift()Z
    .locals 0

    .line 1132
    iget-boolean p0, p0, Lcom/android/server/policy/ModifierShortcutManager$Bookmark;->mShift:Z

    return p0
.end method
