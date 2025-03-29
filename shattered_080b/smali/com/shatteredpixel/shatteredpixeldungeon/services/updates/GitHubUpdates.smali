.class public Lcom/shatteredpixel/shatteredpixeldungeon/services/updates/GitHubUpdates;
.super Lcom/shatteredpixel/shatteredpixeldungeon/services/updates/UpdateService;
.source "GitHubUpdates.java"


# static fields
.field public static descPattern:Ljava/util/regex/Pattern;

.field public static versionCodePattern:Ljava/util/regex/Pattern;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "(.*?)(\r\n|\n|\r)(\r\n|\n|\r)---"

    const/16 v1, 0x28

    .line 1
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/services/updates/GitHubUpdates;->descPattern:Ljava/util/regex/Pattern;

    const-string v0, "internal version number: ([0-9]*)"

    const/4 v1, 0x2

    .line 2
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/services/updates/GitHubUpdates;->versionCodePattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/services/updates/UpdateService;-><init>()V

    return-void
.end method
