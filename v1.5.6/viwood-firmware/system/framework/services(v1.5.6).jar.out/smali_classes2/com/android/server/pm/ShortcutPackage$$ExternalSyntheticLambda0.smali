.class public final synthetic Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/ShortcutPackage;

.field public final synthetic f$1:Landroid/util/ArrayMap;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/ShortcutPackage;Landroid/util/ArrayMap;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/ShortcutPackage;

    iput-object p2, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda0;->f$1:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/ShortcutPackage;

    iget-object p0, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda0;->f$1:Landroid/util/ArrayMap;

    check-cast p1, Landroid/content/pm/ShortcutInfo;

    invoke-static {v0, p0, p1}, Lcom/android/server/pm/ShortcutPackage;->$r8$lambda$Auy0L2woG8zWEPEBq7Ycp0cH4Jk(Lcom/android/server/pm/ShortcutPackage;Landroid/util/ArrayMap;Landroid/content/pm/ShortcutInfo;)V

    return-void
.end method
