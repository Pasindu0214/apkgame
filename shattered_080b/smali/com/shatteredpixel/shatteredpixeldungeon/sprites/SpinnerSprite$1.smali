.class public Lcom/shatteredpixel/shatteredpixeldungeon/sprites/SpinnerSprite$1;
.super Ljava/lang/Object;
.source "SpinnerSprite.java"

# interfaces
.implements Lcom/watabou/utils/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/sprites/SpinnerSprite;->zap(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/SpinnerSprite;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/sprites/SpinnerSprite;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/SpinnerSprite$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/SpinnerSprite;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/SpinnerSprite$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/SpinnerSprite;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->ch:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Spinner;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Spinner;->shootWeb()V

    return-void
.end method
