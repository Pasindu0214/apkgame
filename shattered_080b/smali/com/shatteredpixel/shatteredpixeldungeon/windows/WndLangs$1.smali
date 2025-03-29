.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndLangs$1;
.super Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;
.source "WndLangs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndLangs;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$langIndex:I

.field public final synthetic val$langs:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndLangs;Ljava/lang/String;Ljava/util/ArrayList;I)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndLangs$1;->val$langs:Ljava/util/ArrayList;

    iput p4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndLangs$1;->val$langIndex:I

    invoke-direct {p0, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndLangs$1;->val$langs:Ljava/util/ArrayList;

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndLangs$1;->val$langIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->setup(Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;)V

    .line 2
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndLangs$1$1;

    invoke-direct {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndLangs$1$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndLangs$1;)V

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ShatteredPixelDungeon;->seamlessResetScene(Lcom/watabou/noosa/Game$SceneChangeCallback;)V

    return-void
.end method
