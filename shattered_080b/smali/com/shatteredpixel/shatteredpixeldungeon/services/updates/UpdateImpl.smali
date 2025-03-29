.class public Lcom/shatteredpixel/shatteredpixeldungeon/services/updates/UpdateImpl;
.super Ljava/lang/Object;
.source "UpdateImpl.java"


# static fields
.field public static updateChecker:Lcom/shatteredpixel/shatteredpixeldungeon/services/updates/UpdateService;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/services/updates/GitHubUpdates;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/services/updates/GitHubUpdates;-><init>()V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/services/updates/UpdateImpl;->updateChecker:Lcom/shatteredpixel/shatteredpixeldungeon/services/updates/UpdateService;

    return-void
.end method

.method public static supportsUpdates()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
