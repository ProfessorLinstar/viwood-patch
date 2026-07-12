.class public Lcom/android/server/pm/PackageManagerShellCommand$2;
.super Ljava/lang/Object;
.source "PackageManagerShellCommand.java"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerShellCommand;)V
    .locals 0

    .line 885
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/content/pm/InstrumentationInfo;Landroid/content/pm/InstrumentationInfo;)I
    .locals 0

    .line 887
    iget-object p0, p1, Landroid/content/pm/InstrumentationInfo;->targetPackage:Ljava/lang/String;

    iget-object p1, p2, Landroid/content/pm/InstrumentationInfo;->targetPackage:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 885
    check-cast p1, Landroid/content/pm/InstrumentationInfo;

    check-cast p2, Landroid/content/pm/InstrumentationInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageManagerShellCommand$2;->compare(Landroid/content/pm/InstrumentationInfo;Landroid/content/pm/InstrumentationInfo;)I

    move-result p0

    return p0
.end method
