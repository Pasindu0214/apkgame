.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndLangs$1$1;
.super Ljava/lang/Object;
.source "WndLangs.java"

# interfaces
.implements Lcom/watabou/noosa/Game$SceneChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndLangs$1;->onClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndLangs$1;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndLangs$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndLangs$1$1;->this$1:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndLangs$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterCreate()V
    .locals 0

    return-void
.end method

.method public beforeCreate()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndLangs$1$1;->this$1:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndLangs$1;

    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndLangs$1;->val$langs:Ljava/util/ArrayList;

    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndLangs$1;->val$langIndex:I

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

    .line 2
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;->code:Ljava/lang/String;

    const-string v1, "language"

    .line 3
    invoke-static {v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/SPDSettings;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    sget-object v0, Lcom/watabou/noosa/Game;->platform:Lcom/watabou/utils/PlatformSupport;

    invoke-virtual {v0}, Lcom/watabou/utils/PlatformSupport;->resetGenerators()V

    return-void
.end method
