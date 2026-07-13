.class public final synthetic Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda33;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:[Z


# direct methods
.method public synthetic constructor <init>([Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda33;->f$0:[Z

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda33;->f$0:[Z

    check-cast p1, Landroid/content/pm/ShortcutInfo;

    invoke-static {p0, p1}, Lcom/android/server/pm/ShortcutPackage;->$r8$lambda$PEQM3oYGh7w0ORTbc2H448j9-kY([ZLandroid/content/pm/ShortcutInfo;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
