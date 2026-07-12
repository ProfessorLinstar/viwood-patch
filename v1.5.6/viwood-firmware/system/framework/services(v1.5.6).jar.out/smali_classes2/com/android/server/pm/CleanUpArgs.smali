.class public final Lcom/android/server/pm/CleanUpArgs;
.super Ljava/lang/Object;
.source "CleanUpArgs.java"


# instance fields
.field public final mCodeFile:Ljava/io/File;

.field public final mInstructionSets:[Ljava/lang/String;

.field public final mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/android/server/pm/CleanUpArgs;->mPackageName:Ljava/lang/String;

    .line 38
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/pm/CleanUpArgs;->mCodeFile:Ljava/io/File;

    .line 39
    iput-object p3, p0, Lcom/android/server/pm/CleanUpArgs;->mInstructionSets:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCodeFile()Ljava/io/File;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/server/pm/CleanUpArgs;->mCodeFile:Ljava/io/File;

    return-object p0
.end method

.method public getCodePath()Ljava/lang/String;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/android/server/pm/CleanUpArgs;->mCodeFile:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getInstructionSets()[Ljava/lang/String;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/android/server/pm/CleanUpArgs;->mInstructionSets:[Ljava/lang/String;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/server/pm/CleanUpArgs;->mPackageName:Ljava/lang/String;

    return-object p0
.end method
